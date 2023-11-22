Return-Path: <blinux-list+bncBCCIDSOV5UGBBNMR6WVAMGQEUJMIHPI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 465977F3A9E
	for <lists+blinux-list@lfdr.de>; Wed, 22 Nov 2023 01:17:59 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-679d816d835sf32351606d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 16:17:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700612278; cv=pass;
        d=google.com; s=arc-20160816;
        b=yh0OxthTFdmIObYn4XT6tdW53mMO7ebYof0xIrVnLZeZ/7d/eLG0oSjwCAMr9fGTNO
         nxg1/XSfonV/PAbKJTeCyRBlZb6rYT3kd3apSeZwtJ5Bq6xQFOFQM+Wxv9XpIYht4SEl
         6VfCaaVed7bislhPpo4Q8TnuBDNdAQscmJFJETasow0lD/8fwQ7BfpxcBQChIxZswsam
         rzuqlAONW4b7UxYaQhmTWQbaCYum93KMBHo5Ku7fCWXqIkJDypFjUNrgvQN+gaFwJcic
         vv1diRUA8qaOj2orHb99E6ZCCKAIdLo+BaJ7gAS9+RWxZFXWIJIBjXpR3Sl7MgIqOOIh
         Y/Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=9iLFjmopN8RH5TkNjUJQwiCj6IRoPplgaqLWKaizE5w=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=txRZ7UIp8vcXE0XSpClGJbuvjkLPnQT4MmEkzUNj2esKm4rAUw10Bl7seou6Pd3XBg
         746yN9wNu3FDtKfAKNlAL6G0EJxKYBRrWywwaNs56/rgYOhXyPP2fRYX3PBZyZw7zcJy
         dShW784O7yOHWqrP8cp6YvUda+mWj97Ia9bOh8QswPCZvbmupr2Kzu5hvdeQev0+4cbO
         B0D0N82oLLH1S2NgDfE0WoP8PDam7BinjqXnjQvcYA4rmkD+yQGqOH/cn1R4rIwpEgEs
         MHFrDW6iNFd2N0qw020keGrd7CdR5ah7wt7m3YmRagG3PLO4qEUHTCUyTwPGsewdU5m5
         QU9A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.70 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700612278; x=1701217078;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9iLFjmopN8RH5TkNjUJQwiCj6IRoPplgaqLWKaizE5w=;
        b=tloIDJZrElKqvCq4mf/1qOlHIgqzFGCAHU3YAT4HPA9QcTechw649iTBnWmyn5T/C8
         LtXQyb51wFvXrIN4eaiDRO0nEnJPGG21lLqq+CDeA8UtVi1hu1mcyBY+TtnCWm/KISDb
         k65alrqiPnOM/TK+ozX96IE1Qm1yqOxWQO2fFRmq9OanDE5KEHIkbhWxfdR56IIO89+c
         jAOsG78gSIMJm7/WasSEncAw1AzRIMQjdC/hNy9BxGXu2YceqyjQdkDrZGqTBN2CuyLu
         KccLUTcADQM9cEL0HwcRWY5Vmk8zvKG/fWtKRq+S/k5ZEXyEowPvmCrGBNgrfdi33uT8
         Ncqg==
X-Gm-Message-State: AOJu0Yw/mSUJhzouFzs1wS0YVLMZu6AODx59WUcISPVtV3jffcu9OEQe
	JJvNG+OjYItRnjD5KXIVDCsDeA==
X-Google-Smtp-Source: AGHT+IH+zz2iHiIsFJnqyx3WpP57FtvEZbyKwORznEJqGqcbOmMIY6LQ4wh/MgLJo745HshFeQBHkw==
X-Received: by 2002:a05:6214:628:b0:66c:eeaa:9a67 with SMTP id a8-20020a056214062800b0066ceeaa9a67mr789997qvx.62.1700612277848;
        Tue, 21 Nov 2023 16:17:57 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4188:0:b0:65b:2cc9:5f15 with SMTP id e8-20020ad44188000000b0065b2cc95f15ls3371384qvp.1.-pod-prod-07-us;
 Tue, 21 Nov 2023 16:17:56 -0800 (PST)
X-Received: by 2002:a05:6214:224e:b0:66d:544d:8e68 with SMTP id c14-20020a056214224e00b0066d544d8e68mr950668qvc.3.1700612276797;
        Tue, 21 Nov 2023 16:17:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700612276; cv=none;
        d=google.com; s=arc-20160816;
        b=Fw8ccnoCIUjTbl/6GBQzxdTyefwUwjKt5BTLt+XhvNLWoUfLfPhTdF2LKSgj6eCR/G
         GWqPex+QyUFbYWh9ILLHbnlv8LlaO1cGl6rEhxjGGRVUgEF1v2hv4ISwY2qC8SXmBW11
         nP7JyCEbWSslimHHJClL4H2TB4yFzJx4IBDqJNklns7rq99ik5httNt5Ls1XnK6DJ/4V
         vF+p0i1gZYYe71/Cnr0QSSgzFgxJxh4LR8sHTbv0Aa451a4zRZmlr3yklQyBIUBVsfcp
         Of+Sq6MJet9pJUymQsRHjsAAdCes6OpFP1VhVG5j1TW54YeVYIi9tmq2Q/TnOFlAXa4h
         xbkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to;
        bh=CMJWhvByHXcRbxAepHL1GWCxsPB44DVEbgLvDooQrp8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=NFdqgF3bWVqiZAD+Jk33PU0FfU1x0fFIq9k0KizV7LLYx+3zj9csc8pG8YlQyhq1pb
         KK8t4/5bQAzdEydan2whkTq5HZrfm3pGIlF6a8jeiIHS0aDZUZc30GwSqYvrkJuzTE/g
         WPJnDJp0GpCbSsrniCHs1UmzJSO1u8NjPX3VqscfEUU6CzgxEidOHra+Zt2ZAjpVXC4t
         1rWupT/AkwZ83Pffa7/NGPUSVVCIwYQqOIWJ9TZXj8dKAuCLQgQRhfiVpqT7WHc+nx71
         DAz311o3SRsPI4k9VyVAUkBC6yDLfgvHZkUCH30foCZBnOY19WN0XzayzcGnmXj51GOO
         tl7w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.70 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id gc12-20020a056214230c00b00679d4976fa2si6014136qvb.320.2023.11.21.16.17.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 16:17:56 -0800 (PST)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 64.147.108.70 as permitted sender) client-ip=64.147.108.70;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-480-qNAeGg-AMUKksLqv7PZGJQ-1; Tue, 21 Nov 2023 19:17:55 -0500
X-MC-Unique: qNAeGg-AMUKksLqv7PZGJQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2882A185A79B
	for <blinux-list@gapps.redhat.com>; Wed, 22 Nov 2023 00:17:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 24BDE1C060B0; Wed, 22 Nov 2023 00:17:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D4431C060AE
	for <blinux-list@redhat.com>; Wed, 22 Nov 2023 00:17:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED93C38116E6
	for <blinux-list@redhat.com>; Wed, 22 Nov 2023 00:17:54 +0000 (UTC)
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com [64.147.108.70]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-230-1f6SIv_xOoq5ca3-e83K3Q-1; Tue, 21 Nov 2023 19:17:53 -0500
X-MC-Unique: 1f6SIv_xOoq5ca3-e83K3Q-1
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id BA0E61CA47B
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 19:17:52 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id B2E851CA47A
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 19:17:52 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [111.239.165.192])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 0B3961CA479
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 19:17:52 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1r5aw9-0007u8-10
	for blinux-list@redhat.com;
	Tue, 21 Nov 2023 14:17:49 -1000
Date: Tue, 21 Nov 2023 14:17:49 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: Regex for spaces
Message-ID: <20231122001749.y6k2fgjmiidkw3ys@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <20231121.153445.633.1@[192.168.1.100]>
 <ec1cc970-8a41-47f3-87dd-5ed8d3292fc4@slint.fr>
MIME-Version: 1.0
In-Reply-To: <ec1cc970-8a41-47f3-87dd-5ed8d3292fc4@slint.fr>
X-Pobox-Relay-ID: 93460BD0-88CC-11EE-A8F8-78DCEB2EC81B-04347428!pb-smtp1.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 64.147.108.70 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

Hi Didier,

I think you'll need to use "$name" in quotes if there are
leading, trailing or intermediate spaces in the filename.

On Tue, Nov 21, 2023 at 07:59:23PM +0100, Didier Spaier wrote:
> Hi Rob,
>=20
> Assuming that the file is named "name":
> echo $name|sed 's/^[[:space:]]*//;s/[[:space:]]*$//'
>=20
> Then to rename the file: mv $name $(echo $name|sed
> 's/^[[:space:]]*//;s/[[:space:]]*$//')
> This will remove any number of leading and trailing spaces.
>=20
> Cheers,
> Didier
> didieratslintdotfr
>=20
> Le 21/11/2023 =C3=A0 16:34, 'Rob Hudson' via blinux-list@redhat.com a =C3=
=A9crit=C2=A0:
> > I am not good with regexes at all. They give me a headache lol. Can any=
one supply me a regex that will remove any trailing spaces in front or at t=
he end of a file name? I use the program brename:
> > https://github.com/shenwei356/brename/
> > I have a regex to remove double spaces, but now I need one that will kn=
ock off leading and trailing.
> > Thanks for any help.
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>=20

--=20
Joel Roth

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

