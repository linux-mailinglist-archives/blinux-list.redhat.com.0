Return-Path: <blinux-list+bncBCV3N6GOXMCRBI62XG3AMGQE6RWQJYA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 858A3961B0B
	for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 02:19:49 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6bf6a974541sf76680916d6.2
        for <lists+blinux-list@lfdr.de>; Tue, 27 Aug 2024 17:19:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724804388; cv=pass;
        d=google.com; s=arc-20240605;
        b=KhSaTS4nlL6cb0tyZbNeeCO3RhqykANXnXayf1eIJuLbq7Bovanwg1kun40TilAcm5
         DTjiKzCvKODIcQ5Ow/AlgklJhg8lCydzdLL/zwoTJ9Lk8KAcX3YW6BG/9ZONkyFM3DPf
         TfiFxSGZwq0jy9VVF4LI/KDia/A294AAqpkbeQ5W4xyFb2EriMjTF6jttMnP92bRAZQ8
         AkjZ28hD9dBbU8ZCIK2OdudKnOZIBhP3aW/chF90zn30u6wwvUE/a1/03ubkglV9uecy
         KaNPMNEA/2HF2TFUrSYpVYdcH4n92G/XNJ4AH+71UFSMli6ypE6Gy2r6UKOc5r+Kq2je
         1oOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=vcIBEwARAuwqpCEGrswdF+4+uYDr69AoKfoJnVXEeT8=;
        fh=9TojqJji8j9Glv/Ru9R+dQk+gXPQ8uHx2FIGaRxRUlY=;
        b=lX7r30JsUySCZ5Rbks7VwLydnH/XcUs+/CQlux05vbuGcTO1UJAnPcS46mGW4qHUAQ
         f8vHTtls/nyjqY+M4VPFXjjPzrDzK6FRJ1iI5Bq1fD8XUf4xzpf6x4btzp2vCulPtS9R
         iFeQaa5aDjVVtCJ+/hJHd2OKxGxMr0Qgydym/qAME6cf7xGt3a5MjqbeY5cYe8Zb1u4/
         xq5XCNezel5Us2hE+DeY/Qc4OdvoMsPdZK+qhPYGmy5KgWl7VtlJFMd6ZMUVEwtnD49h
         wut00GZ6bf1aZLIiiRkawq0Fo+TIhmZ4yLciymXkgvycJdqSUs/53dLZEj5N3lFoxiZ7
         g8vw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724804388; x=1725409188;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vcIBEwARAuwqpCEGrswdF+4+uYDr69AoKfoJnVXEeT8=;
        b=KiCfPY2hPYsU6Qkbi480Gnfya3P04FH64AFAPI7A0xUAuUbVul1y8rYlEZqGvN7PnF
         V0t+wUZgn926HQf0KglDooMAaT4uUerU/OknHFoBopKAXt01TeyLEJJFee9x0T8uelH7
         FIpIctXrXDKI4b39uNh43hH4AMe0Uu3yLUnoe0qe5p0MJ5T/Bg1VzX8d2Ic/lCavm4Qs
         P1/K3Mfv0MdMdTM6Up6SnDh2q1z3IPxSMHKfw0gcliSikZ23f5DDK9q97oNR/87f4F6l
         sRAbN2LPSPkitwQzqd1mgq3gzIezgnsnoFLRvl/srZ3WPI3zSt16noIyNhQRtPfUJySq
         YFUQ==
X-Forwarded-Encrypted: i=2; AJvYcCVOnlNVFkRyTyypaXaW1D/5KtmVxS66cetuxxYwmu3Gj1CKJPigPfck8P5Vans+ed4csX81mQ==@lfdr.de
X-Gm-Message-State: AOJu0YxvS3r4b1EGxJlyYpeHsS5jlbFkSTCXScBghqTdFqS4ErLnciKN
	NxbBXhWTmY82WdZItYeoYysB2KokxePjrrShwtWJAxshOJcQcaMjn9JFpxR54zg=
X-Google-Smtp-Source: AGHT+IFuzLmH162PblLK7XFE+ep02glwyW777qDi3ZfnvuJTgPWrLO8dLftVJ3KRm/9s4jLcdrNB5Q==
X-Received: by 2002:a05:6214:2c07:b0:6c3:2dcd:7600 with SMTP id 6a1803df08f44-6c32dcd765amr42269456d6.4.1724804388050;
        Tue, 27 Aug 2024 17:19:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:21af:b0:6bd:735f:a70e with SMTP id
 6a1803df08f44-6c16130b299ls9552526d6.0.-pod-prod-06-us; Tue, 27 Aug 2024
 17:19:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUnej/+vdATdjKJDOTDtwwTzJFet+MTqcSzjh3i89RceDVbW6qKqZZLpcJGaTBWDn4LoQ33G7t1LURUag==@gapps.redhat.com
X-Received: by 2002:a05:6122:1d4b:b0:4ef:65b6:f3b5 with SMTP id 71dfb90a1353d-4fd1acd19f8mr18117782e0c.10.1724804386835;
        Tue, 27 Aug 2024 17:19:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724804386; cv=none;
        d=google.com; s=arc-20160816;
        b=xtuN2P9+tRD1nKHnJ09PNtXWpFTEraF1U5kaqBQhG6uy/9VtbU+DkptQqwReKbR/Cd
         U1SW3R9QYZQqOwATn1jaITJBInD1S0+huvluKVklVKhDQrCMBROjE54mERatBJPpy74h
         SeXcqvVnij1YrZVd3Jr9mtH2PEV7yHUMrL/T78jeRGGwLeqMnmNEBrOMMLII7x4u+qhG
         87fS0Z9ND4tcawOyQFAdXXfD24zRbJi/br5Qe6+fgbv9Cqx1El+JcNOhV/Yc0StldN82
         v2XBWu36HwjZFjv3gx5XDh8tHQM6Hc6J/mYg65oIqUIIiKDwMLDE6EA2tYIL2DFdQvqk
         5iyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=92Nic7ejJ28lj9rBcfcNvnCoSRtA/Xo+pz51hIaDcUE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=xYiAOBJ7XQoUvuNnc4N6xiViR0RDt7VAB7Z99MRKDg/oyky5yS2Cx9TB/Bi5qKHWRo
         IxltKAlybD8781+QKLNIA/uMBuLERKA9z5Y9q9edUujKjxEpb0XvqGDHdkycq8V35GIA
         qRqccOo04DQJumfLKefuKPICk3+5WFTyQqzqgLUOgtll2oAkW1/VbAuPSVMW0sPv+fPN
         Ha/XOX20O/sMGVuYlf36cnPep973X0sHnyLJ0AcPeZrhsCbESf1AZrDNkuuEddHIep/S
         X5szGI42elgvkJPatF6+gl70nvJD4FtCX1zayLjpexcylyVV8WHz/wJltkGpDYIwbn9A
         wrBQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-454fe1dd732si138873451cf.450.2024.08.27.17.19.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2024 17:19:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-495-Z-UraKhuOpKs3GwOaPzHQQ-1; Tue,
 27 Aug 2024 20:19:45 -0400
X-MC-Unique: Z-UraKhuOpKs3GwOaPzHQQ-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7E97B1956048
	for <blinux-list@gapps.redhat.com>; Wed, 28 Aug 2024 00:19:44 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7996E1955DD6; Wed, 28 Aug 2024 00:19:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 76E421955F1B
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 00:19:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 12A641955D4A
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 00:19:44 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-459-RFkv-iBTMtqHe1Dkavq4yQ-1; Tue,
 27 Aug 2024 20:19:41 -0400
X-MC-Unique: RFkv-iBTMtqHe1Dkavq4yQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1M2O6Y-1sfF3d1kI2-005E4O for
 <blinux-list@redhat.com>; Wed, 28 Aug 2024 02:19:39 +0200
Message-ID: <78c726c8-e793-4eac-99d5-ffdf2d80a1bf@gmx.it>
Date: Tue, 27 Aug 2024 20:19:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Grants for developing accessible software
To: blinux-list@redhat.com
References: <20240826195903.wwlxwqjipjjxnc7k@sprite>
 <b7d0dc90-b882-46c4-b089-fe861f0175a7@gmx.it>
 <8f39b1ff-64ee-4d51-bc0a-ee991f3b14db@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <8f39b1ff-64ee-4d51-bc0a-ee991f3b14db@gmail.com>
X-Provags-ID: V03:K1:N8cq8wfoX3rVV5AgeARLNHq59OaPMUMOMsTUHUsgKuVmDjNXMAN
 3UpSi5SWTDSGOV4OYXM9NWgpIn903TPanF8mJ+c9DezVXbCZVYHqs90XrIexo3DXDcOOPFF
 za0VvjC7AbkE8nCi4JtwjgrCYR4eOEEClpsq/WjMbGWJCI4IBzHnmfFrUiYsFgJlnndJNfw
 7SScPhRynJfLxnTeXL9hw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:9aNpREIptag=;IoB591MAfNy5mf2EuTneWCGfHop
 U4XzJXpGWmAe8nJor7D+EzHGRg9r31+mxqbOuRdoT+7CMjCY18WKDQVVU2McBcA/LelbBueC3
 Uu4vf+JCOa6+hrX9JAVazEFVtfylOJQCJ7GrnrPRZ/lEL+/K56xWZLLRB5wReQnB25aRITu7c
 VVFsna8WWrgP31PeAQRxTV7sxTYFL2dSNPCjr9Ro+dtYQkVE47tRbbIs6XkbrIYs4SNc4WnvF
 lWML0CkXHmpEgGLiK5sNy1NtLOE6kDKmC5spzU6k50rq8w5tr+V3LxS+XP/wQTjt7AkUzffZF
 bntXOunt0F+7GbNdDFHYdZwPlPxydsRZhIybh6di1p5O3upiITkp3O/fBcDkRguVz41SOCQC0
 H8Bg8kKcFt64OLz9QdrDLGsPheBOUcLOhRnQ335YKZXmVLJvt1z+0+Ov+AFnY+DI7PCikl+ep
 b4sT13TwchmJJy1jXFtCy/dgtswpTYiZIPav1+y3V/5aXMLlmd6wrz7iCSVN9LXBT3XrunSgY
 DTOftjiH4V/3/bCprUVthOnZ1t9I1bRttmpStclopb1sGWbrZxG2AOd4NxiQEDoxl8RsaARM1
 2QI4mIL4+4WMCL4MrYG9z6Cxic3Y/vo17dTpO8N16h/dwkwda1yuRNPBv6A86loF3SfSMDGuW
 gRi3qGNPMLVcGN1OMsO8bZUNJb/i4eBjjBmboc1prxvSDTWSCeNxex4AEwYfcZAowj32yWuT+
 ocP2C4dj6CLEdAmEZ2oLgprbrP36YZOlcAMS9dx8FKEVTEs2RRcvKQ4phn5XaJ9WDye/dpYXx
 DJ3zl+0eSifQE+7GUVSPbMmw==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

The silent track list is the only problem I have with Audacity, but that
problem is not specific to Linux,, or at least it wasn't about 15 or so
years ago. The problem is still present on Linux now, but I haven't used
it anywhere else since about 2009 or 2010, when I used it on XP like
once. The good news is that the tracks are listed in the order they were
recorded, so I have successfully added an effect for example to the
right track just by counting them from the=C2=A0 top. The=C2=A0 other thing=
 I was
able to do was to split a stereo track into its two channels and
effectively move the sound by changing the volume of one of the tracks,
then I rejoined the two tracks, all without being able to hear any names
or labels. No, it's not at all ideal, but it definitely works.


One of the theoretical causes of this problem is the fact that Audacity
ships its own versions of wxgtk and other libraries, which it integrates
very deeply into the code. From all I read of it, Tenacity should be
fixing this if they haven't already done so, so the standard library is
supposed to work as expected, and any bugs can be worked out in the
system library or in the Tenacity code. One thing that would definitely
help us out a bit though it to get a digital audio workstation to work
with Orca or similar. This would make things much easier for me to do
more complex things with audio without having to use BandLab or another
web--based solution. But for now, the combination of Audacity/Tenacity
and BandLab work pretty well for me, as what one can't do the other
fills in well enough.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

