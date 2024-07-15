Return-Path: <blinux-list+bncBDM4LSNO5MHBBCU22W2AMGQEPGTA4HQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AC793186F
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 18:23:41 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5ce44027232sf1310339eaf.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 09:23:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721060620; cv=pass;
        d=google.com; s=arc-20160816;
        b=t2pz0chLFahonc/YKHhg/G++STziphYmE73xy4X9LwkJu92XgJy87k/vOWCRwZ6dBZ
         cqD/wZmRUFII7nUcMvDd4uXMr0Pkm1GT9XcRhNHbWWaGWjMPxAz9r50YtZ9/fpgHokxY
         bqIcwCeqt2soNEo6v/e9UpqbSdiOVLFUjYxo1mDJ1s2uKOZDhvbxlGhDkYV6VZ2lzWYh
         D/sey2lkRgZxHNMGijb4T7Q8gtW1FurIiwodK/dZyTxl+1F6qf5hwRHwwwTbMQUiWW2C
         f8qyFTpEesMSfadpcHZ6xjYOhjSqgFirwo2mIEebgAWjPM3uHqt6p76CNgWlww3wDFCQ
         64tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=FWbA1XS5uRhl+myFWY3T5A8JEITJcRdOTndv0YfjEYM=;
        fh=VkocMdDFGHZhp29lBYAxuc7XgcPT1aKQyZPAQe/cm/g=;
        b=UmTgs0v6bey42cVwDl/499DZ3d4MeIO201rdyrBoPEZ2/Ie0qDIyd20cC7vLxMqBLK
         PmSxYR4+1K/rjuUyrTM2GC9dkxr495E0Bf6Sdwgmj09GKwdEqBRZ7iefPF/JSYFmwyzH
         GOiM0FltavRLmn7uH9STaXvokNbbbOOEH0b/45nRxkWXTFaojyL//+gfDezNwEPzuGPm
         lADh6A/NSeJgrrzWMTgm/hgELD4tKq28jsz1cpzghlLPiNPIRKX/uYP4gL7qNpcoAeMC
         tBXR4BWoYvEqx8a+w+l4/a+29z01w+A5oH5CLMnTCJt/cGNOZ2zqE22M1s8aiiUVEVf6
         RUHA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721060620; x=1721665420;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FWbA1XS5uRhl+myFWY3T5A8JEITJcRdOTndv0YfjEYM=;
        b=Tm2ZmMaANR5WP8oWe7XtX5i2Wvbbdz8iGatVWE1D5fo89UWKfBra74flTvlBet3G30
         vZShSu1/6gqE7MEkWmf1zqlTUWuGSOHLxY8honONJmuHPnmOoZrRFdEZRuhwnuH4Xj5N
         2uI/qeBDNyohXyCuG7EMxIlWkovfsBNBTJ+2oOJrPzAM8nwnXhwYqealaiFVB92XJX9u
         9lAtq2852teFuoNLKGAuXN3rJ8kGDaV8AeJ4miTA1QI4J9JUrQzfnt7+d02FiABvF3G0
         hkvCnF0olBrZGFIsDejCKwjc3d1XzZHH8Xa3M31Udk5upfhBz44neTw38YLzwxFz9T7v
         FU/A==
X-Forwarded-Encrypted: i=2; AJvYcCXhtNmY0jEkD0RLjhWoBKwJzAcXMcKh1yHcBlDs7QRJQ+Xdyabx9GWI18JKAsfc0fiI8dJu/gBFWCIeuxmKELERdfwmsxwd+lca
X-Gm-Message-State: AOJu0YyApfN6gxXfmt38N0K9GQmj9kF55j/0VwMq5RKO16hyK/39ivqz
	r287V2E24WPLBTTz2JwaSshGLJcaiQZ8A3f0lpTQ660TkPAB/tSP7l87AUnU888=
X-Google-Smtp-Source: AGHT+IHV7Lpd2PdIMWdBSeGFPA9bqzzEy6uAGn6Lci4Icxa3zx1yhkrGO68zDSDeVPC+RsuYJ5ENHg==
X-Received: by 2002:a05:6820:883:b0:5c2:2a3d:a671 with SMTP id 006d021491bc7-5d25693ff57mr93816eaf.8.1721060619402;
        Mon, 15 Jul 2024 09:23:39 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:ba07:0:b0:5c4:39af:4dc1 with SMTP id 006d021491bc7-5cab75d60b4ls3718082eaf.2.-pod-prod-03-us;
 Mon, 15 Jul 2024 09:23:38 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVROGDx50sGWyyw970ouiL4F86MpBrE+h7hzY5KNmERilYvx8Xu8eOeysLCT2qTmqUEDCaxmj3+bhC5AFo4p/nGnVulFabkS2Id97rj
X-Received: by 2002:a05:6808:2220:b0:3d9:3f72:715e with SMTP id 5614622812f47-3dac6330ae1mr84764b6e.10.1721060618517;
        Mon, 15 Jul 2024 09:23:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721060618; cv=none;
        d=google.com; s=arc-20160816;
        b=sVQ7TxI05MlgXDKOOlj+uLAghWZ07yZrhW823VRJrIzNaAjmJKozVIX4tYg4pLajg5
         Je91BlAQA8Ez9VqZqx9acP5oeh1nvYwXiWyFPaC7fK5PeNTsxzJxAVGKBWdm5G0DCb6P
         lJ+JC92c4fLl5FxMkCOZ2Ln1x3Cu29ymZYyuWMDCTWLTCEwaCWu493Tee6iflcFKRDhO
         dKgsP2amO4NjHMlt+BdjVu6h1tdr9tD23CaSdNdpEJy72S3zB5QZpNQZ0TIX72QRUYeH
         w5rdYVlIQapFwqcDIYF1HEPTcA+oIzgWNmgIFWaLmX+sUI/lQ3Qvh4fymo+bfhNUhxBu
         gylQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=tn6JYofUyn5bDGZNRhHcFGPXpEY2+UIzHwwe2oAaRl4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=dImBtdZbCjCEkh+K/CfV0wRxj7Y19r14YZnalbnUDINq9xzy0X4fVcSJyn7MhoFNJ6
         OhGmg3GvsahiZuqnIdaMNWD/edh5EZhcnwS96k0X4JbJdtwx0/OcuYjYi2QX3FimwfxG
         ZFKOT6aLDIbWzV0GrpgtzLgxxlw69lcanTLHxqipdo9jRcF7022t7HTD5LxmA7AB8RK8
         XyuE+GkoA2pDwcplRFcqlNvI0HscPm8B580jj4SalHUntpTnG2JNKWH1pFAevwF7pH8f
         4No54JYhj7ci5TNGYFPwCw0YcpGIlan4034Cxc0WpubLk7nsjsGoOXOsyYaliP0Bi13q
         27HQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a160c7d6d8si550491785a.558.2024.07.15.09.23.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 09:23:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) client-ip=74.208.4.200;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-502-_QXVzlk9N9arwXUx0d_jJw-1; Mon,
 15 Jul 2024 12:23:37 -0400
X-MC-Unique: _QXVzlk9N9arwXUx0d_jJw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4D4CB19560AD
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 16:23:36 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3DB5D1955D45; Mon, 15 Jul 2024 16:23:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3AD551955D42
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 16:23:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8EBE319560AD
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 16:23:35 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.200]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-258-aVmfP1QcPgKAblRj2V2d1w-1; Mon,
 15 Jul 2024 12:23:31 -0400
X-MC-Unique: aVmfP1QcPgKAblRj2V2d1w-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus004 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MFNUQ-1sWk100eZQ-009rxI
 for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:23:30 +0200
Message-ID: <d1bfd1df-f32f-485e-bb09-533230bd9add@mail.com>
Date: Mon, 15 Jul 2024 18:23:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: how many Linux machines do you run?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <ZpUcMqWN2_PPivOC@thechases.com> <ZpUn710LXPBRCNCm@panix.com>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <ZpUn710LXPBRCNCm@panix.com>
X-Provags-ID: V03:K1:EhU6DZrQVfqthtqThIi/lMJkHFzpNNfSHOHQoTmajUGqqp8LtEC
 yGZz42hDAqAxsi72Poe2yhmKi2tB0tdWg7nZUuxg3++VVY18QsLSS5MjXvfCfbhmENv3nSX
 LJUQ409tpWqEKgcCc1rdzbW3R2A05oSFRbzTgQLeC4z3IWzdqR/6/aVc2UoGcrB1kSeS7jA
 LdZDS0TVUeL9K2yrQhmYA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:y/6/+jU5nk0=;7Pi6rcXTfCaZRQDbnZm4Ds1f1ea
 HNiCQWl3W5u3v0dBZ2FN6HyoZ1yNWuKoc1Ctrt4hVKMwdhfdjW59V1U00Yb6ObNWMoyfePV/V
 NzeLuLTkKOOMYstSHAVbq37HcpmENOEh6N4muNW5IsvL1iARedL/KwYTaOHJxZenG4IBPGfvb
 SO9n9Gv6ZMOyhiZgNsW/CoAQ4GkOeWlqOx1W72aBwWKaHE1dXAredJNrq/myv/69EurVUL0iL
 twercLdk5qSCgQgHgd9nnfqyCcALfr3RGx00cCCZ8jYxnGcTZQgkGd4FXNV25qVd6EZ9C1Yhi
 I3U9ukFjKN69St7FSyUsYFIJemcZlpemCNt8Lb6XOXcPzf5aFaCwZgBUuXYxP92irXCmgKVoP
 Rbzl8R9ZFlRBnye/IP1a+4EhULOjWRMXBLporgKnt1GIJ1PUabvsKy97sFOKfTcjQwHVWKbk7
 wDaTNFT80Xc2hOTQG0+ojF3PKBaYIe9AEubeh6sIRR1kMVKUTHGkiApzObRawxlQOZARJcgIl
 EX1FLfhLAZ/UdNPc1+/bvSpTjAb9Lt17gRw+kk+VDAnu9JwIiin6N2CGlXKK/0jjcvqilMSPJ
 uodUNUF2njrKDU3TyxMEFx0YuMyiYzXj/lDZOT+ASO65wL6osaQulfn4HqzcaUo7RJJ5nEsm9
 AWLrSWf6Y5gL5IyTfykTQi3MCf5qIOT7z8MUlNa3nyv6Sj6Uwl4WWfAwp2mF0q0vewyuqAH6O
 +vM+X3hmftXPe2GTgPXc+SrX6tXMsks+YXZ/2rZcXuRwOAIx2WE2WLBpjuFvum8VyyYJV1WrL
 4vYl4FO8dTCrRuF9u/F3JQRg==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Original-From: john doe <johndoe65534@mail.com>
Reply-To: john doe <johndoe65534@mail.com>
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

On 7/15/24 15:45, Rudy Vener wrote:
> This is precisely my situation. I now run two Slint Linux 15.0 machines, but
> outsource both email and web hosting to panix.com.
>
> It just makes life simpler.  >

+1 and you also don't need to be worried about the security implecation
of having services publically available (certs...)

--
John Doe

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

