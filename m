Return-Path: <blinux-list+bncBCCIDSOV5UGBB5GRWOVQMGQEIYNZMPY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 0882A80277B
	for <lists+blinux-list@lfdr.de>; Sun,  3 Dec 2023 21:45:42 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4255702a36bsf5187761cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 03 Dec 2023 12:45:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701636341; cv=pass;
        d=google.com; s=arc-20160816;
        b=tjBNqVUDpcLADY1SVJumvgRCBKKSTBompNS0Z0nr1cKB1QfUVLMfoOatL8Y/DsN+Jb
         vKOF4eUVOni4zyH+SAy4LOwXe5J0QMJr/wiLA+ucLjRKpGIz6nlWNYksAtqmvGz6Ihkn
         E7BRdAOxxwPpLOr7/LAl9lRXIxVDfFAg2JzbcGDK2u7OgqPGK8wdU2nc17B0mucAkyHl
         cHg09+mvYQLtfebn39uWvGKMowKB6n4ptBUl8BL+FkQtMDvTIpkncC5dli01XnYBMgbi
         KwtnruvIctOUczlLeECSUBYG1Q/YrYn6IhP2pnBKEc826LUombX+rhx5Fghsg+HGMgxt
         KJAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to;
        bh=9bFwd0X+GyaEBDM1UvPuWMPFE6/gEn3hwY2U3nx6eKI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=GjU8trQkz3SC6Bj4mG54BB4woc1fwDSaKD8l8mq5uXeKsxyn5XppXcDlebE3HBX6LW
         bMs0R7Jzf/NUTtFSFln9z5Pax+gPwflDCCxPlFVBNk2xyKUGs/6TYSSkC2qPNtkkAb/p
         EYpAEoBNJVYTb7/bV9Xq0AhC3Ar55kqaHXfN6NDtmBxI7668S72zNki2z/oY8hcXvyJ1
         wpzzdHn1dIRoV2YVRzPEHNU/G6JZN+8te2HH4/713GAEIj1TUomMmKkHG/guQMad0i4P
         zLX6Dh2xRBVg9PsJhxnlZXb5399ktyA6VKcLhgvcyAVEaPHcOvvEUJO0jyUyqqQiq0NB
         4KKg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701636341; x=1702241141;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9bFwd0X+GyaEBDM1UvPuWMPFE6/gEn3hwY2U3nx6eKI=;
        b=HKuBxia/I7mdQKqq/T2waWFMW/3IWO7P+etTM6jX4LQdAXnB5FmlYYv6vbYUX9nxE6
         0E3avGXqSeALtcML3ylcUvGcwL2rsbLNy15KJ/YH7EUGqd/z+J6glFv3761k82ukYHxU
         a1FPMbSlzgtL4n2nyfmUVCFMapnJmU3jq/oQj3cckZdG3JGXkwE2EYFUkqn2gD6SLiMi
         ESTwwfIpILDxHkFaxOCtssUfVh7iXeW6HNWKACQcdBXMpPPAKOstXWOehdXF4gXNQt65
         bTCD02Hyu7ON7V9Jsf/FvUzLugcnrP7DkXehqLmP01QxiQrT2iehw2F6caotF/MbM4Zm
         YNRA==
X-Gm-Message-State: AOJu0YyhpBJ8nMehIR6vQEs5Nonaq9oRVLlkV00gxqMip3RNvONxfAmn
	Yy3PEEI0WtV5F33FhW+QpbrjfdcOcpt5KQ==
X-Google-Smtp-Source: AGHT+IGhdlPPnXSpddeo1eLX9vft9XOpO+cSyg3FEr38mqh2WDYB15O4QzQVzgmgMru2ZzdUSo43VA==
X-Received: by 2002:ac8:5a16:0:b0:425:4042:f446 with SMTP id n22-20020ac85a16000000b004254042f446mr5257219qta.42.1701636340644;
        Sun, 03 Dec 2023 12:45:40 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1890:b0:423:707e:9eb with SMTP id
 v16-20020a05622a189000b00423707e09ebls4471965qtc.0.-pod-prod-00-us; Sun, 03
 Dec 2023 12:45:40 -0800 (PST)
X-Received: by 2002:ac8:5cc6:0:b0:425:4054:bc62 with SMTP id s6-20020ac85cc6000000b004254054bc62mr4775198qta.62.1701636339845;
        Sun, 03 Dec 2023 12:45:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701636339; cv=none;
        d=google.com; s=arc-20160816;
        b=KIAj767e32tWNAF6roY1VqXdBXt43OM+d16DeBj92Piv7Ga3g980c65LeU2GpxJh/Y
         5gBvepMS0L9GKbxCIP0oGLmtZkzWvw9+jsGGOfPHi2iDGMcBDshEAVX0mIfFnQvsijYm
         Z6npHJ/Gq/aJoOp06SWvMWew+D28vpjIFc5KG0MxaHd8p2FKt5TNQCmMh+108uiI6eI9
         eNTiIQicjSXOyj+HZGGZ+eE/D9H5i7vMiWhagg4ptiEZgsIJ5FU523yF42Zm8ivxKM22
         /GyjSNUvJQJtkIXBxye60pNbrZmOhJUK2MzwxZfEJXfSNhlO+jodV0UgJpFdIrq0xswU
         EaHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=y6kgHxvLCxoh8+dHn2Wj0aIFvEkUTC1/WEC/fnTOURk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=HpnEQ9CrbvCaOEyYaaV1Q90RtfbCMcWHg+MwlrX1Bv3PVWRutEfpm38fD5DGhTuywe
         QYAnegerqpxUmeahhKiZjucg/k0Xf4Hxk5oz7fiL1FKN0Ooj1hf4oL4SmFu0FFCtxyR8
         n5zjGZYNCt6qNxWRnYW296GJCb41FwHGW8UiKYlfKX+vGnMPRnaIRvLrSvKvTa1P7zQ7
         HIovoWOIlUDva1WLO/lHbwZh68iiiwCwgtlGsUbiXSNqTROVsxhkJPt3WWnTlKmO0oNa
         xDFImfVRmEYEmvf/Oq4f23HhwzK93zUrT1spDYlrKyDotQDIMP0JfZqA3VouB4CTkHyq
         E7ag==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id fx14-20020a05622a4ace00b004236e9c2deasi8377018qtb.114.2023.12.03.12.45.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Dec 2023 12:45:39 -0800 (PST)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) client-ip=64.147.108.71;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-622-gsPHdA9_O_uneuV--dutBw-1; Sun,
 03 Dec 2023 15:45:38 -0500
X-MC-Unique: gsPHdA9_O_uneuV--dutBw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4ED1B380452C
	for <blinux-list@gapps.redhat.com>; Sun,  3 Dec 2023 20:45:38 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 4B432492BE8; Sun,  3 Dec 2023 20:45:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 43B18492BE0
	for <blinux-list@redhat.com>; Sun,  3 Dec 2023 20:45:38 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 20FB480513B
	for <blinux-list@redhat.com>; Sun,  3 Dec 2023 20:45:38 +0000 (UTC)
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-653-4AlBSvOZNq6D09dVJGpz0A-1; Sun, 03 Dec 2023 15:45:36 -0500
X-MC-Unique: 4AlBSvOZNq6D09dVJGpz0A-1
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 9E3291CB400
	for <blinux-list@redhat.com>; Sun,  3 Dec 2023 15:45:35 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 947321CB3FE
	for <blinux-list@redhat.com>; Sun,  3 Dec 2023 15:45:35 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [66.8.171.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id EA1CC1CB3F0
	for <blinux-list@redhat.com>; Sun,  3 Dec 2023 15:45:34 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1r9tLI-0004Dm-37
	for blinux-list@redhat.com;
	Sun, 03 Dec 2023 10:45:32 -1000
Date: Sun, 3 Dec 2023 10:45:32 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: Alsa-compliant Sound Programs
Message-ID: <20231203204532.kegnchgq5xptrfpx@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <E1r9sxc-00D01F-D5@wb5agz>
MIME-Version: 1.0
In-Reply-To: <E1r9sxc-00D01F-D5@wb5agz>
X-Pobox-Relay-ID: E8559722-921C-11EE-8BE6-25B3960A682E-04347428!pb-smtp2.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

Hi Martin,

You make like to try the alsa developers mailing list,
"If you would like to work on the driver, library or an ALSA
application."

https://www.alsa-project.org/wiki/Mailing-lists


On Sun, Dec 03, 2023 at 02:21:04PM -0600, Martin McCormick wrote:
> I have written some sound recording programs in c, gcc to be
> exact, and I want to modernize them to take advantage of the
> better capabilities provided by alsa than one gets using the
> older oss or Open Sound System API of days gone bye.
> 
> 	If one searches on the web for examples, there are
> several bits of sample code that use alsa functions rather than
> /dev/dsp-based activity which the oss apps used.
> 
> 	Every one I have tried fails in exactly the same way to
> compile.
> 
> 	For those who don't write your own programs, this
> messagecan be skipped but I am hoping somebody can suggest what I
> might be doing wrong since all samples reference snd_pcm
> functions such as snd_pcm_open, etc.  All need a specific alsa
> library called with
> #include <alsa/asoundlib.h>
> 
> 	That library is on the Raspberry pI and the desktop
> systems I have tried these sample code blocks on.
> 
> 	Both the Raspberry pI and the HP work station that uses
> the AMD64 processor appear to be working normally but when I try
> to compile anybody's test code, I always get errors like the
> following:
> 
> /usr/bin/ld: /tmp/ccTjr3cU.o: in function `main':
> tester.c:(.text+0x3c): undefined reference to `snd_pcm_stream_name'
> /usr/bin/ld: tester.c:(.text+0x79): undefined reference to `snd_pcm_access_name'
> 
> 	This means that gcc can't find any of those missing
> functions.  There were several more lines, all referring to
> snd_pcm_ calls but you get the idea.  Any snd_pcm_call produces a
> squawk like the 2 I just showed.
> 
> 	The author of the sample says:
> 
>    line. Some ALSA library functions use the dlopen function and
>    floating-point operations, so you also may need to add -ldl and -lm.
> 
> 	I ended up with the command
> 
> gcc -lasound -ldl -lm tester.c
> 	Which changed nothing and produced exactly the same
> complaints.
> 
> 	So, has anybody running debian bullseye on a Raspberry pI
> or the same on a 64-bit desktop gotten alsa code to compile?
> 
> 	I have looked for -dev versions of alsa libraries which
> are the ones you want if you are programming and there are a
> bunch but none of them touches those errors or I wouldn't be
> posting this question to this and one other group.
> 
> 	The alsa libraries allow one to more easily setup a sound
> card to provide digital audio in several formats with several
> sample rates that some sound cards won't give you in Linux either
> because of hardware limitations or the fact that the Linux driver
> is not fully compatible with the sound card.
> 	
> The older sound programs I wrote let a PC or Raspberry pI store
> audio from a police scanner or short wave radio on to a file and
> only record when there is sound.  They are always recording but
> the recording app sees silence on the line so just throws those
> samples away.  A very small buffer keeps the last fraction of a
> second of silence before the sound started in order not to clip
> it off.
> 
> 	I'll keep much of the old program but use the alsa
> routines to feed the audio in instead of /dev/dspx where x is the
> sound card in question.
> 
> Thanks
> 
> Martin McCormick
> 
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

-- 
Joel Roth

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

