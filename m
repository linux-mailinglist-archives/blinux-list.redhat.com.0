Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id EDD442E851D
	for <lists+blinux-list@lfdr.de>; Fri,  1 Jan 2021 18:02:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609520535;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sOLTyuNBGRqdIx/lpT+dOZJJnq2EB4EzB3wet0kixec=;
	b=ZbY8wqxxZM/GU2PNiQh2LFM6p6gLA12/DSR7B8eg8xcyNFRKh1inyCrPsXCN9dYToZUGCm
	SS4YF9LpXdK07iXMpyZNXq+23+BO3WdkI1YuagQMnYo6L5/r9XnvmJQnAkIr1bghx+PeUN
	l0c8LudbBaGhDRxT6F6wcQVYCZiSO9k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-142-yHDuPAINMiaXhFDS-p8fsg-1; Fri, 01 Jan 2021 12:02:13 -0500
X-MC-Unique: yHDuPAINMiaXhFDS-p8fsg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74A92800D55;
	Fri,  1 Jan 2021 17:02:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2669519C48;
	Fri,  1 Jan 2021 17:02:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7544F18095FF;
	Fri,  1 Jan 2021 17:01:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 101H1oGY008477 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 1 Jan 2021 12:01:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CBE06110F741; Fri,  1 Jan 2021 17:01:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C8236110F73E
	for <blinux-list@redhat.com>; Fri,  1 Jan 2021 17:01:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A3E74800BFF
	for <blinux-list@redhat.com>; Fri,  1 Jan 2021 17:01:48 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
	[209.85.210.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-458-iV5SAMrHMduJQxAI-1evDw-1; Fri, 01 Jan 2021 12:01:45 -0500
X-MC-Unique: iV5SAMrHMduJQxAI-1evDw-1
Received: by mail-pf1-f174.google.com with SMTP id x126so12654389pfc.7
	for <blinux-list@redhat.com>; Fri, 01 Jan 2021 09:01:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:reply-to:to:subject:in-reply-to
	:message-id:references:user-agent:mime-version;
	bh=KmCK6A+WtaAy6soKbENeG60/NgGYKebSXsiqow/h5tg=;
	b=T9SkadhMIoRnnt6BSinoAggiPSpXCAbnao1hYVPxlJaQ5/avaYbS60H2farip2RlGA
	GzFO0IrXIxYOe0WGCg18Il7/NKCAaWajd4NRBYVlSopNz1VKXlGVscQzReQ+p5WnwGjf
	v6Aaab4xQnWb+eSshZW+s5vewS5kJdyFJJ0WAiwJVedpePEQ03awg43VuZrwYD/vwet5
	mdXoq3XZCRwZcoN+Xv+OU7x+fmzw/H9e527wcqas8BiBLD3LtfTkB30IBJg5hgcpaOmD
	+o4Xl9eMNMyX4QsK8YCmJsN5s9GFBvnfj+ywPc3JseQ2XFNqnQdAtqboZzfGoZAws6UT
	5Rpg==
X-Gm-Message-State: AOAM533vzndNSYzZ/3juI33O3Xhw8K23H6CD4SJb8/aukVUzLzoQVhbf
	/QxXHS/LS0ozilllYkLKee6aIdonkvqCSw==
X-Google-Smtp-Source: ABdhPJzvMaD0/Nl+2oa2J89HcctGA74HZXYSBw84e+jPdmzBynf6fcBYD2DDIVnYKZc4U+BG2TUpRA==
X-Received: by 2002:a63:4d52:: with SMTP id n18mr52678963pgl.237.1609520503742;
	Fri, 01 Jan 2021 09:01:43 -0800 (PST)
Received: from precision-M2800 (72-160-123-114.dyn.centurytel.net.
	[72.160.123.114]) by smtp.gmail.com with ESMTPSA id
	b11sm49324816pfr.38.2021.01.01.09.01.42 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 01 Jan 2021 09:01:42 -0800 (PST)
Date: Fri, 1 Jan 2021 09:01:22 -0800 (PST)
X-X-Sender: tom@precision-M2800
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Remote Desktop Under Linux
In-Reply-To: <20210101084156.4fe4a73d@bigbox.attlocal.net>
Message-ID: <alpine.DEB.2.22.394.2101010859420.86603@precision-M2800>
References: <2e9e01d6dfbf$56add9f0$04098dd0$@kellford.com>
	<20201231163535.72cc6332@bigbox.attlocal.net>
	<20201231234142.GA5255@rednote.net>
	<20210101084156.4fe4a73d@bigbox.attlocal.net>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

It has admittedly been over 8 years since I did this but as I recall rdp 
has the option to allow sound from the remote machine to come through. 
You will have to look at the documentation to figure out how but it should 
be possible.

Tom


On Fri, 1 Jan 2021, Linux for blind general discussion wrote:

> Tim here.  Indeed, as far as I know, VNC and `ssh -X` both convey the
> graphics without sound.  To do that, you'd need to run a sound-server
> on Windows
>
> https://www.freedesktop.org/wiki/Software/PulseAudio/Ports/Windows/Support/
>
> and then configure your Linux audio to use that remote server for
> sound.  I'm afraid I can't be of much more help than directing you to
> the parts since I don't have a configuration in which I can test it.
>
> It might be suitable for streaming audio but I imagine that the audio
> latency would be pretty horrible making it difficult to use a
> screen-reader unless you have a great deal of patience.
>
> I know that the Remote Desktop (RDP) protocol has provisions for
> forwarding the audio too, though it requires a fairly high-bandwidth
> connection and would also be subject to latency concerns.
>
> -tim
>
> On December 31, 2020, Janina wrote:
>> I am unfamiliar with RDP. However, I believe the 'ssh -x' approach
>> onlyh conveys the graphics, not any audio associated with screen
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

