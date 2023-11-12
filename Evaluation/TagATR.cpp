import Evaluation.Dependency.PseudoRandomSequence;

import Evaluation.Archetype.Circle;
import Evaluation.Archetype.Ellipse;
import Evaluation.Archetype.Rectangle;
import Evaluation.Archetype.Square;
import Evaluation.Archetype.Triangle;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;

import Evaluation.TagATR.Interface;

import ATR.Instance;
import ATR.Literals;

import Meta.Token.Type;
import Meta.ID;

import Std;

using ::Meta::ProtoID;
using ::Meta::Type;

using namespace ::ATR::Literals;

namespace
	Bodies3D
{
	enum class
		ETag
	:	unsigned char
	{};

	auto constexpr inline
		TagSize
	=	sizeof(ETag)
	;

	struct
		Body3DReference
	{
		::std::byte const
		*	m_aData
		;

		ETag
			m_vTag
		;

		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
		)	()	const
			noexcept
		->	float
		{	return
				Interface
				::	ComputeVolume
					(	m_aData
					,	static_cast<int>
						(	m_vTag
						)
					)
			;
		}
	};

	struct
		Body3DSentinel
	{
		::std::byte const
		*	m_aDataEnd
		;
	};

	struct
		Body3DIterator
	{
		::std::byte const
		*	m_aData
		;
		::std::byte const
		*	m_aTag
		;

		auto inline
		(	operator++
		)	()	&
			noexcept
		->	Body3DIterator
		{
			m_aData
			+=	Interface
				::	ElementSize
					()
			;
			m_aTag
			+=	sizeof(ETag)
			;
			return
				*this
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	()	&
			noexcept
		->	Body3DReference
		{	return
			{	m_aData
			,	*
				::std::launder
				(	::std::bit_cast<ETag*>
					(	m_aTag
					)
				)
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	Body3DIterator
					i_vIterator
			,	Body3DSentinel
					i_aSentinel
			)
			noexcept
		->	bool
		{	return
				i_vIterator
				.	m_aData
			==	i_aSentinel
				.	m_aDataEnd
			;
		}
	};


	struct
		VolumeComputer
	{
		::std::byte
		*	m_aBuffer
		;

		::std::int32_t
			m_vCount
		;

		::std::int32_t
			m_vCapacity
		;

	public:
		explicit(true) inline
		(	VolumeComputer
		)	(	::std::int32_t
					i_vCapacity
			)
			noexcept
		:	m_aBuffer
			{	new	(	::std::nothrow
					)
				::std::byte
					[	static_cast<::std::size_t>
						(	i_vCapacity
						)
					*	(	Interface
							::	ElementSize
								()
						+	TagSize
						)
					]
			}
		,	m_vCount
			{}
		,	m_vCapacity
			{	i_vCapacity
			}
		{}

		inline
		(	compl
			VolumeComputer
		)	()
			noexcept
		{
			auto const
				vElementSize
			=	Interface
				::	ElementSize
					()
			;

			auto const
				vCount
			=	m_vCount
			;
			auto const
				aBuffer
			=	m_aBuffer
			;
			auto const
				aTagStart
			=	aBuffer
			+	static_cast<::std::size_t>(m_vCapacity)
			*	vElementSize
			;

			for	(	auto
						vIndex
					=	0z
				;	(	vIndex
					<	vCount
					)
				;	++	vIndex
				)
			{
				Interface
				::	Destroy
					(	aBuffer
						+	static_cast<::std::size_t>(vIndex)
						*	vElementSize
					,	static_cast<int>
						(	*
							::std::launder
							(	::std::bit_cast<ETag*>
								(	aTagStart
								+	static_cast<::std::size_t>(vIndex)
								*	TagSize
								)
							)
						)
					)
				;
			}

			delete[]
				m_aBuffer
			;
		}

		auto constexpr inline
		(	emplace_back
		)	(	ProtoID auto
					i_vTypeName
			)	&
			noexcept
		{
			::std::size_t const
				vBodySize
			=	Interface
				::	ElementSize
					()
			;
			auto const
				vCount
			=	m_vCount
				++
			;
			auto const
				aBuffer
			=	m_aBuffer
			;
			auto const
				aTagStart
			=	aBuffer
			+	static_cast<::std::size_t>(m_vCapacity)
			*	vBodySize
			;

			using
				tBody
			=	::ATR::Instance
				<	decltype(i_vTypeName)
				,	LocalBody
				>
			;

			::std::construct_at
			(	::std::bit_cast<tBody*>
				(	aBuffer
				+	static_cast<::std::size_t>(vCount)
				*	vBodySize
				)
			);
			::std::construct_at
			(	::std::bit_cast<ETag*>
				(	aTagStart
				+	static_cast<::std::size_t>(vCount)
				*	TagSize
				)
			,	static_cast<ETag>
				(	Interface
					::	ImplementerIndex
						(	Type<tBody>
						)
				)
			);
		}

		[[nodiscard]]
		auto inline
		(	begin
		)	()	&
			noexcept
		->	Body3DIterator
		{	::std::size_t const
				vBodySize
			=	Interface
				::	ElementSize
					()
			;
			return
			{	m_aBuffer
			,	(	m_aBuffer
				+	static_cast<::std::size_t>(m_vCapacity)
				*	vBodySize
				)
			};
		}

		[[nodiscard]]
		auto inline
		(	end
		)	()	&
			noexcept
		->	Body3DSentinel
		{	::std::size_t const
				vBodySize
			=	Interface
				::	ElementSize
					()
			;
			return
			{	(	m_aBuffer
				+	static_cast<::std::size_t>(m_vCapacity)
				*	vBodySize
				)
			};
		}
	};
}

auto
(	main
)	(	int
	,	char const
		*	i_aArgValue
			[]
	)
->	int
{
	using namespace Bodies3D;

	PseudoRandomSequence
		vRandomSequence
	{	i_aArgValue
		[	1z
		]
	,	i_aArgValue
		[	2z
		]
	};

	VolumeComputer
		vElements
	{	static_cast<::std::int32_t>
		(	vRandomSequence
			.	size
				()
		)
	};

	for	(	auto
				vRandom
			:	vRandomSequence
		)
	{
		switch
			(	vRandom
			%	13
			)
		{	case
				0
			:	vElements
				.	emplace_back
					(	"Circle"_id
					)
				;
			break;

			case
				1
			:	vElements
				.	emplace_back
					(	"Ellipse"_id
					)
				;
			break;

			case
				2
			:	vElements
				.	emplace_back
					(	"Rectangle"_id
					)
				;
			break;

			case
				3
			:	vElements
				.	emplace_back
					(	"Square"_id
					)
				;
			break;

			case
				4
			:	vElements
				.	emplace_back
					(	"Triangle"_id
					)
				;
			break;

			case
				5
			:	vElements
				.	emplace_back
					(	"Cube"_id
					)
				;
			break;

			case
				6
			:	vElements
				.	emplace_back
					(	"Cuboid"_id
					)
				;
			break;

			case
				7
			:	vElements
				.	emplace_back
					(	"Pyramid"_id
					)
				;
			break;

			case
				8
			:	vElements
				.	emplace_back
					(	"Sphere"_id
					)
				;
			break;

			case
				9
			:	vElements
				.	emplace_back
					(	"Cylinder"_id
					)
				;
			break;

			case
				10
			:	vElements
				.	emplace_back
					(	"Cone"_id
					)
				;
			break;

			case
				11
			:	vElements
				.	emplace_back
					(	"Ellipsoid"_id
					)
				;
			break;

			case
				12
			:	vElements
				.	emplace_back
					(	"Head"_id
					)
				;
			break;
		}
	}

	float
		vLoopSum
	{};

	for	(	auto const
				rBody
			:	vElements
		)
	{
		vLoopSum
		+=	rBody
			.	ComputeVolume
				()
		;
	}

	auto static constexpr
		vExpectedValue
	=	0
	;

	return
		static_cast<int>
		(	vLoopSum
		)
	-	vExpectedValue
	;
}
