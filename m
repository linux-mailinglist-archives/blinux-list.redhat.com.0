Return-Path: <blinux-list+bncBCV3N6GOXMCRBKOB2W2AMGQETPY4XJY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2D19319C7
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 19:47:23 +0200 (CEST)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-25e2a9f1414sf4691339fac.0
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 10:47:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721065642; cv=pass;
        d=google.com; s=arc-20160816;
        b=M2rRxcbgh0tzc+gsu23W9sbcsOByHAfHZr/xKYk1C9iLFIcdecTAIJdLOgwytZ9diF
         n+01WLUez4mkIsJ5BKSrRMTZU0xgVrjKNzKuF8joJOq6AbwrsXuzQeoFlry/3GPD+MHG
         8GOVVaXzrw7KjodmgZNdJyL02BqsxTkyfUQD5uCMoSPRow1pk2iekBCPmTUYjObPtloG
         pmige+HYzePk+KSrqlgpShQtbBuVuw+3LiUAs3d0mf3JZBMkRHKuLs9exjJX2PIu1Gin
         jEYPpVDxUB7mOazrf8e5vA7KRTHq2S6Bk9xjuvwXo4kyxAjwLbRCrnQirpE2iEqf03Oy
         eYlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=hyw9J/uEJ0+m1Vks9wODSUGxyczlStAeVbaBju8gYog=;
        fh=cGfUAUaExFAYfTjM/O4bGtg4kJssaxQy0gLuIepPG+E=;
        b=LEanExE+mW0YaoH40kLts4VNRgE861sfGrTnQnt3fYn7g/uW3RgrMbXJcFufWVf4+V
         uLdvMjTwRGNC0uq470ttZ8BCNCPRe3uIUp+KTqvaNwt+fYZajoglBCl1srB3B3vZ4XTv
         8fn0xGcEbw4dIXSNiKk104aS8eoI5qngzGP6pup9N+9uMlFjsFk4w/D9MVLEBZaRO/oX
         01gOCT7ys+7yedUzt2EXuGAWFlmmNVFE/ipNalmoxfi4N4dk98SAhj9YpbDlnManyrlN
         yCcuF7fHM8e1yZEs/6Essd4vtxanVGzrzjcStuVgSzx7x/ASsffc1xtRIXvR80kpEw/0
         6rJg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721065642; x=1721670442;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hyw9J/uEJ0+m1Vks9wODSUGxyczlStAeVbaBju8gYog=;
        b=WQWIUBjEc/LI+qSmWubSTrq6Vvrr34sWuXO7G5uh1zneZI2+JZy7LZJk4hkZkjE2RK
         nxlAtYDmDBWu/WgOX+OFUtRZhza3tTFH2ydnXy5g7jvXO9PGJOG4C9qwhZk1htlixRZ1
         Gta+bANjL+23GqPonoIpyLQJsE9KR/Tj69EFhXmvI3HaRpA0igIc/c9+w4G9ddjJR84Z
         buNCwkvHyp8bU5nbeshfLOBzHIpAbp/82LJbg2xazcj5B5OeN4UfW7UOqHSmE0cRWFi9
         Wm/Ln91FduvgFPEQ1hVFIX0eXVIIq/k1aWTWwltr7MUg87m9o+oWRrRcexMfOJdqEWDZ
         actA==
X-Forwarded-Encrypted: i=2; AJvYcCWiUyIcxbtzhcfz4OaePyhUR062wPuF3zwWMu+def6+G+hdmX89Z7qSLcLIZuu6a0hErqUIc+Cw8/nAK47MB8kTrGtmONoJDM9r
X-Gm-Message-State: AOJu0YzfHov2DY/y+DtfLxLpAXe1GAtwH1EKed9anhEICSXRkmqixP/s
	ihVKmvMNYUSBykNvHrDlWlqvl6+jV4sVvaZJVSc8TJQ3LbwFz7TGteywuWLaflI=
X-Google-Smtp-Source: AGHT+IGbHE6exmzd5JF6yjFhYXU7QjARFKWr0NKw2QqoFGa9RTsCBEbweiJcxnQj8H5m8tP+Z4pIQQ==
X-Received: by 2002:a05:6870:2309:b0:254:c777:6327 with SMTP id 586e51a60fabf-260b8b75e3cmr155349fac.36.1721065641682;
        Mon, 15 Jul 2024 10:47:21 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:200c:b0:254:7203:f69f with SMTP id
 586e51a60fabf-2603ad989c0ls3289060fac.2.-pod-prod-05-us; Mon, 15 Jul 2024
 10:47:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXhWZLB7abqISOVl1gztpMC6lmYSk3jqJ4wKISSDPtoGHMCDCTn0AMAASkhwBUPbPWWuYf6E1cGFOCaBYG5XZiuNIExguXU14qRxFFf
X-Received: by 2002:a05:6808:15a8:b0:3d9:dbd1:88f2 with SMTP id 5614622812f47-3dac634cbe9mr457889b6e.16.1721065640714;
        Mon, 15 Jul 2024 10:47:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721065640; cv=none;
        d=google.com; s=arc-20160816;
        b=fAgRF+XNdASLlvuwEzoooSKP1jDL8H2Qy5FpPiJ1AHTp63GgKfnz3o5d/czDhi6YMM
         Mc64eyruzRr5oEru2azlMmIwJnzYBQp+lsIcpAME3q6BDzQxejczYvDaVLsyHljfyqfX
         i8r+wTbzOgCvfuumCZFH63jkn893xH+rczpEHFfbUKN90oDJe53zxMUHZ7bVuvk3lvux
         fL0+coQz1zFyeBLz7M9+A4qDlkxMGzpnSACn3BR1bOwW5VRbD66s2UPtxc87jCX0SMh5
         LFUkEqlnrMW4bcdOMbaCz2XkF7pOlap6tL9LDA+LfTNOKJYTPaHfBPe9uf26dZNTWTSK
         g7Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Acn6c9Yn80UwiKJquTWxEpNJcTEpQ9zCZBJhvfGco2Q=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=LuHHQz0e8FJ1iuiCoUEFAxDcDvrfUVefwPHNDx7pj3q8LZySYpM+/bac2mONpUaCOa
         mrkszwnPt7JQhBsOoNfJvAnho07Ry/KoY42FviPMxD+1tL8DQcAxKbWfzAQ28mzAz2Sm
         m4CRaL2dIQeCOARGne7D6ICLSOT4sDwp34AM/BtZiaAYvreYDXCaH8/rM3DufnpHYvUa
         7NHCTDifkUDr754yy3Dk6xMIOlxkjmU5nEWc7xthLZBFJIHwdWWMPL3OgurIlgWW1g0Y
         F03sVhIdbiMQQTtDxadl9pYvuJ/c1+gZQ9VMUOAJupH2OuDagaOPX7FF3OfjbIK4cdE4
         5tLw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a160c826d2si577928585a.652.2024.07.15.10.47.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 10:47:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) client-ip=212.227.17.21;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-492-MfpYn_uZPzKeH04BA_SmfA-1; Mon,
 15 Jul 2024 13:47:18 -0400
X-MC-Unique: MfpYn_uZPzKeH04BA_SmfA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 576D91955D48
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 17:47:17 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 486711955D48; Mon, 15 Jul 2024 17:47:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 45A2A1955D45
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 17:47:17 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B07DC1955D52
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 17:47:16 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-88-O0B6UntZNZm1ntp4iy2KwQ-1; Mon,
 15 Jul 2024 13:47:14 -0400
X-MC-Unique: O0B6UntZNZm1ntp4iy2KwQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MFbVu-1sZSjW2tMU-008APw for
 <blinux-list@redhat.com>; Mon, 15 Jul 2024 19:47:13 +0200
Message-ID: <a253881d-75a6-436a-9485-68b832938c81@gmx.it>
Date: Mon, 15 Jul 2024 13:47:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: how many Linux machines do you run?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
X-Provags-ID: V03:K1:Kktn0pRHHCorNulBxFxM62R3NKus+1juqzXjyNBm8vPzT+ELy9k
 yOKYYnbstO+BRdeRqFtEdnJw00585A3dV3TGy8ox7gpyATZAbmpPRfDiF96d9lJvgHYoA4r
 nxjpHfJyqmpa14ekkadCPfhJ42tH+HVIju8tI1yMMEUkzEwuz0GmcZrtsyQg1QwVUeCnJFk
 N47HY40qukVYclgoq+TFQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:k8svFbuX6Xs=;TG65c6A6P6wuqgi0ec4lxJSSGar
 OEoYsBVEPo6pJSp0z3DFbyhOoA6nqHVsgPC+nCJzHQ0m1G0E4wuxXL9GRO3PXcSjKXLgmsCJu
 iLfGQutYV6r5HFzNSQGKpSOsCJ7C8p3CdOqgJIE+HPXXoZTS5EAT/KxaFG4CFuUD3frds7CWK
 1mnMltTtltSWNZjUkYCKB9DK+oOWC1Ubd7RymF0t5lbvusapZP7lKS/1Inw1o7Mmfy+gpIlTz
 aIj/4Pf/4pkNGL3l0NcizRKiyNCCsgiFAA4mI+z7WjXQhoQqW0/jVT8mV152E64ckDgx6mrsi
 43kGNV2mh1ChGT4s8/JmbcG87XIvpdhvE2SHJGylDeR+y6ii3IojZ08sAvSVHLXcVM17pQg+4
 5Vv4COYqJE+h0GFxSJd1MLWU7x8uHj6+nsUV7FBSUuSHzf+2psURxa1v3Rnw+mXG8haJfToAk
 D5cpImGX57tZXFZRRDbCYWF87ehJM6s/KRlSVsNH0WP7mAPQve6VzBEGU4ZGIpMIJIYoWW1Hr
 +3nu1ke8UaVRl1DJqf6T0f59W42HhTZzkeuymek8wO9sgfDkxBXIaWMT12zsCrrsu+cLd/jwu
 dWM6vaNnkeStfFLskXo9hPwr629upJR+R6TownX+D3eAcexvYgPUHjF/BnKvty/mpvDAohRqQ
 4CeBA3mN6hNOagLUhc+Phk3ujIVfVRJOJrHTqzz5FiYq5buUDfF6j8NnWVX49TmTGQJNdr09v
 VniOFpWVnJpDAfmpxrJGZUGd1jNL11lx19nSGogDQpVxW2b8tLVfH4WiHz+WUxHvEUnoffNEv
 KGCbbQ1Bz9c/bfZSPpNmsREw==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

I have one Linux desktop running Fedora-MATE-Compiz 40. I also have a
Raspberry Pi 400 that runs Stormux. I configured that to be somewhat of
a laptop for myself. I also have two VPS machines over in Amsterdam
where I have run websites and yes, email. I cheated though. I use Hestia
Control Panel to manage everything, which makes certificates, dkim,
dmark, etc much much easier to handle. Back when Freenom was a thing, I
ran my own personal email through my own server, and never had any
problems sending mail to anyone or receiving it myself, even though I
used a .ml domain that people like to say was used by spammers and
scammers, though if I was a spammer or scammer, I would have bitten the
bullet and just purchased a .com, as these are magical trust-rainbow
unicorns. Yes, I was in fact able to set my reverse DNS PTR record with
my VPS provider, and the rest was done through the panel, all except the
dmark and spf records, which are just TXT records on the domain which I
added at my DNS provider, which incidentally was different from my VPS
provider. I also hosted my own websites there, which is quite a bit
easier to do, but I found mail to be easy enough actually. The problem
now is that Freenom looks like it's gone forever, and I haven't found a
decent domain registry yet that won't either charge me an arm, a leg and
my eye teeth, force me to dox myself to any script kiddie who knows
about the system whois command or run what feels like a sscam on me. I
feel that ICANN itself is a scam, as it's really the United States
Department of Commerce disguised as a global non-profit that holds a
monopoly on every name accessible world-wide on the internet, but that's
a discussion for another day and time. In any case, unfortunately, I now
must also outsource my email to GMX, which is really just 1&1. I don't
do any tricks with relays, and for some reason I could never get Mutt
working the way I needed, so because 1&1 still allows me to enable
secure IMAP on my GMX account, I am able to get my email on Thunderbird
on my Linux machines and FairEmail on my Android devices. One day I hope
to be able to run my own email again, as I trust the security of a mail
server I control over a large corporation any day of the week, and email
really is easier to self-host in a secure way than it seems on the
surface, and best of all, everything needed is free open source
software. But my budget just isn't big enough these days to be able to
buy server space and the names I would need to bring all my stuff,
including self-hosted more secure than Google ever dreamed of email,
back online.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

