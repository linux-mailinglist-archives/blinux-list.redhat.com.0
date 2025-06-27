Return-Path: <blinux-list+bncBCV3N6GOXMCRBNOG7TBAMGQECUBB6YI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id AE346AEC2DC
	for <lists+blinux-list@lfdr.de>; Sat, 28 Jun 2025 01:03:19 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fb3466271fsf45944466d6.0
        for <lists+blinux-list@lfdr.de>; Fri, 27 Jun 2025 16:03:19 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751065398; cv=pass;
        d=google.com; s=arc-20240605;
        b=BR9mNRpDjQ+3lezeMDRShFEP7rURqougKPn19vr3NdAfDvSrj9yJzy22RW7oELDmrx
         XmDJz3U7SKzeeSJhK8m0BNwe8xLHYI7kooL6o8EjwPgNEvNYjXIjRVdIqGJzc5FdXdCD
         PEMPVP5h+ul3YSojNHQsIQUhjPB3f0ABiOFZAWc6slbugfB7OZ8U/wXbe4Vd1hM5l5V0
         8IHtCR9JNAsIU421yq2URbclY6lDp6icWiqW/M/U7o6NyIpwo9BGQEDd++Q4125o7FjN
         cTd8njrKUGJkgEWt/6QbunRNygBlyIZvyYuwHZjxAFxJHBvx7XZdItis0JF0ONJea8sK
         iYsQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=atc5+px7dOwguJi/u+VlIDOzXZiTGDikon12QLwckss=;
        fh=LuoepBa8J6p+Ogy2KdQfHtKJBPkNs/R+S0HXY0noz3c=;
        b=MhiVtX+pwN8BRqEQDAiM9lRjk+LhqbKeCZC1v3T+utqK6slgaZ4CCs2J4EgqYj6+Mo
         83dZatE+nxgcpfVJxWsi0vavBcv/wVgn3oOWgCGX0yUt2CBXKJf2cjH49OzpckC2GcWO
         CY3uFnml8AEK9zCVc0gYQgrvGxJxqvDWCgQZ54WIuhW8al/vf90t9mI9JDHXxi2VZ/kt
         zuPUx+wt6VSCug9Ny8I7hb9xVzAsUM7mlxKCu3hrK5W0Kj7trm2C0OmM2vw55qumstDG
         01gMlAXaRbZlvUl7NEoy8byFZ7h4W+eD1KJ1yBardtsc2Qd9drZdxBmYCCxUAy1etZd+
         Xv7w==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=ABHrdvJD;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751065398; x=1751670198;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=atc5+px7dOwguJi/u+VlIDOzXZiTGDikon12QLwckss=;
        b=eh8DptjjO2i5WfVfOn211c4wSIgINcmnCr/HK1TL8kaUNggvuV74vR0FTmrJVk1jT+
         gsw6mZrHQDWiahbr3NCX5TkggUfl+TyS4kfsxoosFsq/r2gPvZn865iOXt6YP3mNNYNA
         mZUzFm/X0otE8ejo9JrXZM/AnO9Nz0pghajHwFZEkCz8rHF0z4vyYcO6g7H9dzLTCE3A
         tLn1+V0OIF7NpTCCl+l8lFocPi1ZPJatXxoBZPR6JORA4SWVhhtsEe0az/Lwr0qeKPv7
         rg+JVohmzy/WnGFodKkttONepibilGtanmG3yDj8TZ33hDg5Ma3t1KqYQ9GHDfwvcqYL
         lOjw==
X-Forwarded-Encrypted: i=3; AJvYcCX4DTvYYni6f7vIVzJpbsMcTYP/i+JglIU3CNNTLfbHY7/ezFVgbG+t03X865jcczI5nSlNLw==@lfdr.de
X-Gm-Message-State: AOJu0YwbNjY214ElqDZwryy+N2SpwCgqHNJKxENnle6LAb9/EnN3LZcH
	NLZ8ixzTMUy8Y1x6guYzNUcqKaLEialSfpkDzGuF+xUUanBgSb2cptan1u5pHfchv8k=
X-Google-Smtp-Source: AGHT+IGl74TY8XZs1OpHf7VnnoN4yA1ngzI/3+2/qK9ypSt4cQejcxAEHoQkgUt6Zfn6xAoLAMGeUA==
X-Received: by 2002:a0c:f10b:0:b0:6fa:a5c9:2ee7 with SMTP id 6a1803df08f44-6fd7536d6a6mr141265076d6.8.1751065397725;
        Fri, 27 Jun 2025 16:03:17 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZevp2kyi6TDugpPVJnPeT5NM/EAweTlVUeUJQS+P88T0A==
Received: by 2002:ad4:4eab:0:b0:6fa:fb8f:7fd7 with SMTP id 6a1803df08f44-6fd75334cb3ls38467656d6.2.-pod-prod-00-us;
 Fri, 27 Jun 2025 16:03:16 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXd+UnB2SZZhLIDp3gBnro4DLZhBAhsSjaY04Zss74b9R6wcaN9bvWkMFoDXFkp5o0sORbY7DudpRsk8Q==@gapps.redhat.com
X-Received: by 2002:a05:6122:308a:b0:527:b7a3:dda8 with SMTP id 71dfb90a1353d-5330c6fa8a2mr4321196e0c.7.1751065396453;
        Fri, 27 Jun 2025 16:03:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751065396; cv=pass;
        d=google.com; s=arc-20240605;
        b=XHtxstBhZ763LXjnNeH7TofESrs6LcyCODSDFdvXsIL/85kfeCZo/OQHpR9VhspxjX
         nfC57DmD/PuQMrBGzOHkHZHf2j8nIlBwYpvbx4ggEnPXp8nScHkr/OVlbLLvwDH/eRvQ
         dNZOTegg0ZT3MK39g48DIpmORR/h0kZE9Hk4gKwApNKQBl03t5fK3t1dmzJn2Z1cQQEF
         /sJ57IzvNBrbjRG/fraQgmxKW2ETMiyM523WrXNb9sNHr4L5iK4N9qmffmYL+6J0q6lu
         CETEXFHboK98XfUFGomiXdrn9STBWKoSofKv0cM5/JnKhvo7IBTH/en9AAZd7y+cVVGC
         lSvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=yM0hJFjHzNGCc3VSJPqY398WsBC4J4reaFFEw8hI7Us=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=STM234mQRCQ2Nzb9GMKs6a/7i1M3wq9QJo105F3Z4PIIYVUOXBUv8UUCwUhvT9xny6
         6rVDKjSi6uF3kfrqPHhkqvBvzQEOMXEP+WR+aNhnegmUb9DEK+wMQQ5TtRFuaL5J04z5
         wz74S1LUjOeiW3/Eywf+RA20w3QXF4P6tqGdq7+pjy7a/tWkWc+w+1Rt4JmdVBtisX0b
         0y+LA4KowrPvqb1vQFU4aijqMvPJri0CJIb3TVIce4JJLRMoUL0JferTyXvFxXvrmWKE
         0PQyyygsxqc03Bf/YLPjzPgan4k6uEsTy40kHWh2cRapA+pBRi1ceG/Pdqdw8g42qSbm
         AkFw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=ABHrdvJD;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 71dfb90a1353d-53309334b93si1043466e0c.252.2025.06.27.16.03.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 16:03:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-100-CfDhwb9JOO2m4ZmCZ7KKfA-1; Fri,
 27 Jun 2025 19:03:13 -0400
X-MC-Unique: CfDhwb9JOO2m4ZmCZ7KKfA-1
X-Mimecast-MFC-AGG-ID: CfDhwb9JOO2m4ZmCZ7KKfA_1751065393
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0360818DA5C6
	for <blinux-list@gapps.redhat.com>; Fri, 27 Jun 2025 23:03:13 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D475030002C0; Fri, 27 Jun 2025 23:03:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D16AA30001BC
	for <blinux-list@redhat.com>; Fri, 27 Jun 2025 23:03:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 554A51955EC1
	for <blinux-list@redhat.com>; Fri, 27 Jun 2025 23:03:12 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751065391;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=yM0hJFjHzNGCc3VSJPqY398WsBC4J4reaFFEw8hI7Us=;
	b=Js2juryP4i3v7U80D1/d0TsAfumCsp5dCPBpO0nVNYzB/x+zGNMiwNNz/BJ+qQlTwa+dfT
	inj3TAcJxstl6z8imkU7+dw46VXgwO+FtvB4hj8gKahv9ZMe+Sgq+bctTU13Uqg7eq18lV
	GHmsEE0HaYrwX7jHbJxgnUIAdOn0XfMBZVBiR8W2I5fu/VURz7bL8wV9p6iZIErhdrB3NO
	AslEhz3yia6ZYJ29jdpq6Nv6EOZsWG4gUjlV3/29nSX4OTBXudXMs+EIxZppVtgwPicrgG
	gnWoD9lwMuJBZlSJBz1NVTwPIgxrE4oLrD7XDLbRjik9b+82Nq8YnufAR5ve8A==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751065391; a=rsa-sha256;
	cv=none;
	b=IOxyuYoanC/0nvcN9UXdUhaielb0GAzIxpbXLUzHKLT0WG8O/JTdREHjzC3MqEVKO7pKlM
	rynC6TTphnEVMUvOJZDZp4d56NsEdw0cq9+43MKGKoCkVFth8owSfj1iNUlpV8DjR6E6Ln
	4wHn9FqlHgwfqSxbs8kBHyYeVUVB/K9BLz78yeZsBIUbATgpN/uvK5DfsmOSo9d8jZ84NW
	WqfMoThycjWnr9QgnOS1wg8LC/4xtzEkoZhqx77+J9HFvGmudrMqZqPsgsrCm9CF2ajLAF
	ujaaH+XAs49vfJfYN0S6GfWaMi1i3uF7yMxcwtyR3bjtW7p4lhsBYOP//vPzqA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmx.it header.s=s31663417 header.b=ABHrdvJD;
	dmarc=pass (policy=quarantine) header.from=gmx.it;
	spf=pass (relay.mimecast.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-441-i8OIi7h3M36e626Vjflrog-1; Fri,
 27 Jun 2025 19:03:09 -0400
X-MC-Unique: i8OIi7h3M36e626Vjflrog-1
X-Mimecast-MFC-AGG-ID: i8OIi7h3M36e626Vjflrog_1751065388
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.236] ([136.47.142.229]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MA7KU-1ubJQn1xcI-0006Hw for
 <blinux-list@redhat.com>; Sat, 28 Jun 2025 01:03:07 +0200
Message-ID: <de52b0a4-eb22-4c18-a744-75b91f88b129@gmx.it>
Date: Fri, 27 Jun 2025 19:03:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Braille Blaster and linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <8775841C-4F73-4EE1-B8B6-2F5DFE0E9ED0@gmail.com>
 <366e0c17-48d9-46dc-b550-54b8c1da3a3a@slint.fr>
 <A5B44213-E216-477A-82E3-8E6934C590C9@gmail.com>
 <e438d884-82b9-427e-9207-1aff37fe2c7e@slint.fr>
 <C1DD2AFA-6AFD-4389-BB30-F166BEF6BFC8@gmail.com>
 <cb4e0932-509e-4f5c-8315-204b2e5a19d0@slint.fr>
 <6747116A-6B03-489A-B4CF-539BE8C00998@gmail.com>
 <fb929687-7590-4e91-a5e2-ab997c2eb25f@slint.fr>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <fb929687-7590-4e91-a5e2-ab997c2eb25f@slint.fr>
X-Provags-ID: V03:K1:CYOU3Z/Wum5hzTDwPStqtcZKUh9SdPj8n7m1RADm/2i6PADChqL
 u7bCNVupzfL34h0LSbb0UFjUleLJZZkY7l9NARzBPDDCFy51D7HbUVxmJonvM9Vbv2io/3z
 EO5zT12Pcul2tLcvMZlL4e+AoUYdwS0t/IJKZB+T3rtIASNHUbaEz5flgRG2asXcLfbSGF7
 7oqSR4+pL7nJLQOSxcLLw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:IfGeH7TZ8hI=;Vtw+2Au51sEd4Mm8aaQsjb6vXn5
 CBvjjY2F+HQk4rNdsR3Cq0v5ZP9zfc5e7HSVhALE+ZgP0eAoM8zPdjWzY19/KjKt2A/tUgSmI
 bBWmp7ZiEZiMdHH77CkK6XEvqg2+b0QcIaycqBVeMiJcp1IGUoigwhRpZ1UoSwmD10HiOnLUT
 Rnm2Qr1IpWm59tsesU6kfStW6JaS1eiyUs2X94hNS9qiVLSTO+wA0361yXmjnxSNru+pCtHpa
 n7GEWa7yM7xbusi8BN1dovl9PggmwepdpzlV1Lh3x4HNMM9v71KkN9l+bqOel/dnkOhiBJSOo
 ywxZRjzP3Kz8iH0AlxrigPGB1PMNFBTH3v2JWTNiAlb9WrhU1V5/+EeC+QMLHL5qxhhIl/vOk
 h31WYYPULcIMskvHUST5rKMRDyacjZXw+JqpH0veGjuIFt61rzJXuhL3cR82YmmgkcNvCb966
 aCRZHJ9G0Iwb6nUwbfE3iXoRHrkrkJiICEX6I4z571YhtxN3asjz+FJddh+X88MF8yiiQcMv6
 McEaAjXxaxfHJgN6FEmWBgVXHnVF+sHo7wOT7ZF0dAJUurxzuM/VcfBfU03Kq3U0QIQSVDFCR
 MKPu6lkePG6dn1XIDoU7O1vX/bqaD2NRU5sMJ/ow9/fSWoRRtN50XG+wG870s61k+lE1gq6Zm
 iEI5Hmj/s0xEOV4KL6lIK9hw7phI7Ids7EsVuZDcPi+6vtj2w4+aYmHX2W2H5nLBIaJIwq0Cv
 R9J+gknCsE1/fgZtY08KoSr0qShfMa/jgq1RszfjNuFkRv1ZROiYA365fEZop3SRzgbos4Eck
 nCfjL0tiL+/b2X/EJvDWaMtLJIyPI3T53/6IZJAniMeEcDk0W7h8PlRA4WA6H9udVnE5CP69z
 Kpnn2Jio5Kg91SVNUsqlWFmEo1YKPxshf6qfoIaNRVpcHi4ppPusZKPVLxubciQ81PHIfo9SM
 RcpsWTbZqcszXgvcitdFdZvcTgMhFByCaQgtqXTsfp4UJwCMpNERG8m0bWPpfpRt8snGfkIRA
 5jTWwt0yeF2aXF16DlsO8aCt9XGJhTxNMSqvSjpFHC5Wnt0n8dg0MSGnNNeCfCfM+WK9DVvNl
 n05hboc7R5XvehH+wpGUPY9HM7QqxU4Ta72eAf2LzCsiXWpmztcDvbuU1qF9ftePtynPWdSYo
 VxdCe7ilYANa6SGcqzriqmIxLDwu/AJ4GtPnuhNfk0AGmwDa1cFwXfKBouUBR48K0EeBXy0RW
 6Xle32R9+30ZHRpBmbMWQOHa8VkgvPFWWERe6yyYKGD1yayGB3xgGn4SISrlOUGwPjqaIyS7n
 OOzg5MoZSeZ5AUl4vMkogz/74xJAYmppTaV5TqLDyZ4wVLW1AKkFVMSS32tbU/cwx3D2Vi/AL
 cmQbBOdKeHwB2P8G8MDuh39+p0f2bX7Y1mrc9cOOQE5JY0hZXIznCOVLpws15njJnWHgRS+vq
 UlX5ArSzg60uJzeJyYD7dlDYxjzWyP0+LTpTQUlZXA4QZj3N1RDLMWVBQGmKC73Y9+yRAYu/9
 todooSy76zCPqV1RYEA9eBwmo0Tmhr00avIbEr3fGv6eKyC8xcJftFOswiMSW39Z11VOIEIDj
 vNvtIU9ffDxzoSGcRln1Jedl73FI/63+N5gK3aYsrXo9sZCJFeRlPgf0xg+Xr0/SdayLnQioP
 6Ac5txIGJzsqpwllvp/arrKdcxKTqm4K623YxMT52Yk+AFhFmg1tvbdpIRnA93+GRu4iwzY28
 qZpaezXSJeeKC6I+fkV5BxbDPmCPGTd2OLKFfOz4M3guPaOXVQksdEQ78FZdmgqbIz6BPHnWR
 CDd9kQBibRvElXGybvhtoK0msfUK1yXVAKTDjWL/mXqULBbavVQMW9q86KvvHrpe8JH/SQ9Q7
 se+lmoeF0KVUWLIxN41fvj09kbwiuF46QXXVf5QUA+9WgKGO9Wgj5vCBHqGcxwctKG6HRSTa/
 A9o/OYIHqvqUM8BIcB+Bw2emRqu3Zli6GfHTzAO4i4BJzEUeV0yrMXJm16NZ+yYGdArUE9la3
 T/Db6+y65j04NTup01CS7uNkmn4+VxJKBXy+Rjr3hbukbexetVfEkhrW0PDfC47AiaDu0MC6A
 Wo5uso17ardmwACY/LFLem2vsJdVYuyZ+3B0cLrAqBQd1V3Lt7nG61y/LeMJ1vSa5dybICEHT
 gYtzwBf1LdbBQeQpmYOEkPdes8MomAJCRxzh3Reu0yyED/fSDsYrYsjALV1GkYRQk+zPBKTVz
 iLR+30k5jMyycIF/6TbYOdUz++FixoRmnGEMvdOw6k3XFfrIQQBfwcysvLM145YKGv1CCvbtX
 WdRvCUeZ+1v1ctt3hY7CKgqkNNUaZyxuiBOqW49t0sfdkMW72MT8sZTnBwwfXxBw2+xsF3u4K
 npSwSK+uLZUDJYq9pvsNk+T5spP3WHkx5HlhJcyqEnETLk57EhY8F2VNMeodFg3SIx+n6O4DR
 icLUvS39DaSN459fBzqA4uxW7zpQEuhm2lhiEnwAcxCea7NIZvM54w/MCpMazlNNPpM1jjb8C
 L2Wjoglp8cTxOUd7iX193DDH+Gr6/qaRJUIDq7CoY7xqYdb2q3kh3Q2RJX/qsXqxn7Md/FRQG
 p32UbSsFhqdoLEZembSu+f8hbVvOBoPeRkFSlr6daKQBVE2IZl4G9JCYpqmXfwcYvs+4HJ8H0
 Ppm6MgDenGyuthYBTH1mvm2gHrePr0zY+vn3WhL6k32zKu3Z4PFfO5sicXTBfJ4R+jyc8TL1k
 RsgCVtXYkX5iD5US5jN7Zb8vHBnmQbAHOSfL5pz2+bKZX57US5hx/9A3xsdRidrGpovShsKeh
 r7wIiYraEpA4OfH3FzbuitnRFWxwWE26dUqdFibnbVpzkdDrG5TkBJn2bJIAvfYXQF4Y3ODO9
 +Kf0yyRjjFuDwMrI/89vV3N+yk4YX1t+3QUC1wBi1HYrZ+LSE6YTuYR3jk7hoE5drUG+HxC7a
 FeiSosai5gBZfS73K3+YqShrybGXVxuOAC3HU5AFvSkwcrXIFbTtxQOxAeqjdp7cr6Ui35PkN
 FhvwVoFdXkJcoCnczo18sOtgvmg4YUQn7iaYOB74b5OX9PNVDm8M5oMsnO3DXYDORQa+Fp75k
 NWQFqUV8U2d5Gy0HuNONSjCBjDXj1ZfRGOqGMIf2yF0DhcZBMmP3beLC0n9+yBeAvgxkUa1mT
 dNg0GpHLzc9O9rwpVz75PQGjNfdLkabw15JpO9oxHvN+JQjMnF+OMFJPB+DX+oWfzDJLBR+NM
 FZelDPl/XdQeafZpN5s4fG4uQlIUwNQlVlrsix2xKXEEjUtD8RlMdu5qmdA8liHoFgI5zOH3n
 PK5fn45fTzoiwNAsjFSX/qNRUzlOw==
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: K8jVZgncr8OHsxTSxynjUGTfn9-IHfGMPwzMz8o8fhE_1751065388
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=ABHrdvJD;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it
 dmarc=pass fromdomain=gmx.it);       spf=pass (google.com: domain of
 kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

The download on brailleblaster.org is the proprietary version, so it 
doesn't have or need a build system, but does need a late java runtime. 
I didn't get it here, so am not fully aware of the contents of the 
archive, but there should be either an install script or a way to run 
the application using the java runtime that you can install from your 
repository.


There is a newer open source version at

https://github.com/aphtech/brailleblaster

that can be built from source as per its README.md. Be advised though 
that you would probably need many of the packages not available in Arch 
that Didier mentions in order to build the source. This open source 
version is also still under fairly early development, so may not work as 
expected yet, even if you have all the components you need. I can see 
that development is in fact active, so eventually most of the caveats 
may go away in the fairly near future.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

