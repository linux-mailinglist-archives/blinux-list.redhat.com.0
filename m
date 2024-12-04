Return-Path: <blinux-list+bncBCS6LGFW6MFRBIWGYK5AMGQEZFTX7UI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id C28979E43A4
	for <lists+blinux-list@lfdr.de>; Wed,  4 Dec 2024 19:44:52 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-466bc740022sf1110411cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 04 Dec 2024 10:44:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733337891; cv=pass;
        d=google.com; s=arc-20240605;
        b=VUoWn4JgsF9PuIF6b4EouQcu32gT8hHDL8sKz1L0Pr27yxKjD9xYGsLf0WyEROUO4h
         z6gLnrRxVRTEPKU/fOjmMTOfjEn8q2ieiomYIIAgNNn/rGH4w9Jj81NIdfan1J531xKB
         WJ2CTzMI0vOf6ozQtsoNUUt3d0Xnag8wnK+mITZYn3gNl0GUFOiunYbROaIs+S+fPo1Z
         XeXv6qeUDRWYwSfSkcJO3/hmtXL/J452YwfuLJcqeoE/qBNwhV/DbXamMzjxVHFmRDWB
         jVMozsflrlJRkjv5sKdjavGbo4dO3m+TPeUS5Fhs5PBcASVc86YIGdself/aXffVEWNQ
         H/IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Qvth51RVXT/8KuSlJnCFh48Ff88LGsCGfBhlxbX3XI8=;
        fh=qIzXVgEIJXohobMRTbxLjs63HKqNGBYady+qh7xCXGw=;
        b=cLHUBEZm9vRDN8P/yrxyx+QWdmIhCCl03Kk9kWeanJi0ty6f3vvKRwZPV92K1VdCt9
         Gu5fuL/3qU+Bd6V/ia5lb0OZjvnNCUQIKbsjb0teeFyLIsjEKnTqw2pp8HoRPSawBOvI
         mpih9HazmC8UGWeGK3Zk5WPRj63gDokKLoGcWE84bNPdnMRS4ah9EMkErYXS3IEj45K4
         ZVEDp90eEVu6K2GCRT22gq0bQPTlZ+wV3C0ld1cbAZj/c+8HV586sWKcg8LrUOSwF3cR
         ZEqG00OPNw+cpAWjYJKFPKxGTHFvV05RH4Zg7zBJCauXsv35z3pw0zoncmdYryyBhjkU
         moKA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.15.18 as permitted sender) smtp.mailfrom=guenterk@gmx.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733337891; x=1733942691;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qvth51RVXT/8KuSlJnCFh48Ff88LGsCGfBhlxbX3XI8=;
        b=kMkENbHq30PPADsvOLbZ8Lo0yDN+r1KZwvNLdO3fh9gOLKd910/96bIj3PD6CtqThj
         ekBrvIqtBPZ1DGF73dRC6Lm1cApiITrXvg6jFFSsC9+NGVkrWCUcacQIUf5meFU7DTF+
         /IgQluwJ+L7G/I2abX9O38Ph6JVqoPdCPSirNMgINB1TZyZ2o/oQ59ieQKYVjviQYWo8
         dbOqJpcYdnC/jRwT+WcQzKEZO8NDCoEC5Sv5s6zufOtkMFwawtnCFlEMKqaBaeqVKk26
         vr0pl3pOkTYJuJv3rZHUzt0lDsc1HGdkikNkucCzSTZPf39S4a8Qhii2p8RppX47Dgkp
         cNXg==
X-Forwarded-Encrypted: i=2; AJvYcCV09hfZTJupNfL0+NHarHt6VMaTkfRHX3UGqeuFettP/n0xXwRot7DDyMvdc6K+4d91DAK8dg==@lfdr.de
X-Gm-Message-State: AOJu0YwuJsWzzF44l4qeAIk71rIDI0BN5T9ogR0KAlipObh3ftVF1j9U
	AWKz9cJVOdeqODs66+drIIp0/S+dldeucUUT74st5kFPu3ftICLC5mmKvpnjigI=
X-Google-Smtp-Source: AGHT+IEaG/WZC6g9YJRtCMhbwCfuylY4TV8hakVwV1f1YxP6c4G7U0TlKKtj5Edi4ZVRPiEjbJfbhA==
X-Received: by 2002:ac8:7c52:0:b0:464:af64:a90a with SMTP id d75a77b69052e-4670c368601mr116079461cf.23.1733337890784;
        Wed, 04 Dec 2024 10:44:50 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:59c3:0:b0:465:2fcd:cb06 with SMTP id d75a77b69052e-46727d25c71ls1287671cf.2.-pod-prod-04-us;
 Wed, 04 Dec 2024 10:44:49 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUss0F6vB/jxxK4amJ7B2NHd9Mr7J9bgkIEg5tdZucWhBMWQOnjesb/ZGNr0UerpWexRFTyxuevz1Pm2A==@gapps.redhat.com
X-Received: by 2002:ac8:5a05:0:b0:461:13a4:e901 with SMTP id d75a77b69052e-4670c3a6bf8mr89475301cf.30.1733337889745;
        Wed, 04 Dec 2024 10:44:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733337889; cv=none;
        d=google.com; s=arc-20240605;
        b=CQZDpJeQNjqxwqQwSgzUayI+WMF+a3lOgV56oltxwSfeftKKeURqkwIKBqcu3Cp1aR
         7EoFV6C44EMN84ayHfWF+S6jfsp5htxmRBg0VRHPGYTe3HEdPnKMEXkm7XMGERaQ9I8U
         FQPZ6RkVu3eTh1GeCXgC7B8+RBKavWirFNwEMGHrvSOXens7POodvq9IYD2sqR9qbpUG
         +VE15rZrYUbaX4LEvPBgKqsIdwWVquhvlILA60jyciMQGl2cGzIn11ORyQfB8RTa5DBU
         IfBK2DJ1dhMUSRUtg9GJ/YMWJ+BnSOP12uAIgY5PspPqSyGhEOe3wEQxSlnquS57UAJI
         7xJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=wch1Uz0kFOByicKFQlWa15kUIzTqUwj+3/Iwvu6mdN8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=XlLCU95MdpbVGQVWDf73KtbAH3XSQ+CEBJKuEUraHpcy2T/Z5iLGW5j7IneEPZsD9o
         SfI4SxpOEesKQtfGI5Mhu7MhTrRRG6G4qcjPd0ON0HxCb/K3nwcrDRJkkqwQUkUMSE5a
         XU5ZugzZboQNxSPiX2913ZmEawM3lESkCyyxca25KCRvsM40kMITqRehSYJECwa1bjXt
         QQ3QgOPZf+3+AXycKTqIQLdb/nOywFFrcwCFAgIMrzkSw+fcfq9GYDjjqbp/0IVxuZuF
         8sgYcKmQiak5EGRRExQTosr0ix7XJniL4iLqCiKbAgfxu04afJOPi/YC77ahjGA3IWBK
         a4fA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.15.18 as permitted sender) smtp.mailfrom=guenterk@gmx.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-466c410ca81si173867991cf.343.2024.12.04.10.44.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 10:44:49 -0800 (PST)
Received-SPF: pass (google.com: domain of guenterk@gmx.net designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-27-8OI2w3lbN8Wu0HJjaYTG8g-1; Wed,
 04 Dec 2024 13:44:48 -0500
X-MC-Unique: 8OI2w3lbN8Wu0HJjaYTG8g-1
X-Mimecast-MFC-AGG-ID: 8OI2w3lbN8Wu0HJjaYTG8g
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B8A771955E80
	for <blinux-list@gapps.redhat.com>; Wed,  4 Dec 2024 18:44:47 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B103B300019E; Wed,  4 Dec 2024 18:44:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A0AA730001A2
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 18:44:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5EF13193EF53
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 18:34:45 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-538-fhWmGuEuMTe44_ZgJyCSGQ-1; Wed,
 04 Dec 2024 13:34:43 -0500
X-MC-Unique: fhWmGuEuMTe44_ZgJyCSGQ-1
X-Mimecast-MFC-AGG-ID: fhWmGuEuMTe44_ZgJyCSGQ
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.175] ([79.231.8.239]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M4JqV-1tJBK43nkn-00ACE9 for
 <blinux-list@redhat.com>; Wed, 04 Dec 2024 19:34:42 +0100
Message-ID: <82671067-e4bf-4c49-9d29-720efb0c8f49@gmx.net>
Date: Wed, 4 Dec 2024 19:34:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Might 1 of You Please Remember?
To: blinux-list@redhat.com
References: <1fd07eaa-8fef-71bb-cb54-8d86c6fb2dae@hubert-humphrey.com>
 <94c7528f-df0d-4648-b8da-acadaba3460d@gmx.net>
 <24053523-34f6-0be7-50d4-5766ee8dce51@hubert-humphrey.com>
From: "'guenter' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <24053523-34f6-0be7-50d4-5766ee8dce51@hubert-humphrey.com>
X-Provags-ID: V03:K1:/lvk8C+x9mW/rEt7vPJilyVe47BpvVey0qZIpwhL33BIhjufiNG
 zo0O/MVar3EN5OXCW9TMaW/ivrfAtJdUW7gPqhTRLSD1be+7fJxoC031kJ6kFsIB25VH3fr
 Z3MQYAsEsShj8Gn8/Nc8X4mRylZNxZSKj5zzcMMPWNOiI6NA8k6zMmDS/t18XUoD0oFHf7j
 ENLTagVQ46ZEM4i2LJmJQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:WVVCahx+mZ4=;Ho7XFWaC5ZkIKp8tSczSb3BZGou
 GnCEtJrnuMKnD01PEox2CciB8kUWzXOPz87XFxOte5Rv1ml8rd2ggJMRww32kB+kr8EDIodhm
 5mQFo1jJV8dg4+2dEkaSp1FvYVTNiaxSm+R0YH2X/nsCrYqn8mfux5JY/D3wlqmkrbV/Wje/L
 h1030XyRV2VdpcH3Rzf519IevdfHRRkITQ4CSXGmpmj7QDpOcH/QG7SdF60nPC+8njGAFkFiS
 9lE1l46gaygyDZzNU36hg3dtfVNLIx9nNZOn5fx8HUABp+NKp0bzT/qzPhbOC6HNu4YJaoGBY
 jYrd/jqxrAR9sM12BcOlPPvbEbGUcw5fXTysDnFq7HMj4KlHad/1XwSZOO/UJmzToBB4yU9FS
 ndnKHjA2melFXemn+Dx8zF2kJhT2mj66D7eKPq74sJdFZLwEc/ywCS8OuNF2fr6rOgEWSPNFi
 nnuZ6xEyz7E07ex2ccL/wSfBr5YrszOmjy1ovJp3zZI36a9hklln2O/7D/qHWta2lqDTFPVJa
 HW9khxgQN1VJmZWt5I3bpp1XOSTagFGinWGclUeh6lpdvenGpynPrdr3ly6Yd+rZqm2Ub+Glw
 O4EGqVIiaoOcOmN1BjG2jc5wX3NO03FgQA72SknUdCDiG+kmKAghgJ8QD3yB4LDLvoh13O0D5
 dqCn3l/RoFEsDaE7U5sNzT1PzOmO91m+rmkX4+tVmvE43dQpQuqpjNJ4wOjNgv6Zhd3rVxzU5
 TE2YFfIEsaMmf/7xg9ycedevnQOxnvbDchdFNLd2kNmrSR90xTbk+dMm0VuA0LZ6AGl/3Sp/0
 sCkgXoAcQB4JhLqz3d2aV0FFYHWfXF2BAYBEqHxAA/DrY1i8DP41dBYn/At5daKDXafKCXruY
 jbS6NEax6hEYupVEgDxUJ0N3+0DLpGyULNsRfDqSU2ZUPpd3OJsce5cwSIqcPXOmWP6MrLm3k
 YMN1x3QnIxY5wbE4494xCh1CbkFVZxfLB6XlM5A6M46Ssvv7qjMuymDwojEBCkoPsSTh+PGLS
 Wshx7ypEP4Bz4fHiBhp8CFr21p20uTG4G09rCflpE/NDOCb+LjNpW/wYc7ZdLWZnLoIC2owmN
 2COi/W3B7aK0puvrQssxEugAP5J4PP
X-Mimecast-MFC-PROC-ID: FwT3U9dgzPnCmJz75nHFQCrS9LTZubZhf4cFIneyE-k_1733337282
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 1XiUiOv2UQLCy0IiGZu3RoeGyndjeAlT0_B0j5mPBks_1733337887
X-Mimecast-Originator: gmx.net
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: guenterk@gmx.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of guenterk@gmx.net designates 212.227.15.18 as permitted sender) smtp.mailfrom=guenterk@gmx.net
X-Original-From: guenter <GuenterK@gmx.net>
Reply-To: guenter <GuenterK@gmx.net>
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

trashy provides only 1 eecutable file named trash.
You may download latest version from here:
https://github.com/oberblastmeister/trashy/releases/download/v2.0.0/trash-x86_64-unknown-linux-gnu.tar.gz

As usual invoking
trash --help
gives some usage hints. No man page available.

hth
guenter
--
.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

