Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 780921FBB3B
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jun 2020 18:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592324291;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RRKkY1s/86hBNoe6BDVo+eTVSzNYy63doCIBmChNVIA=;
	b=JJeUfHsO36VhmgQXDyk6iOK7KbST3UE1Ay7hNNZ4yqdufxdZPKEpDg/5qsi1O0hL7kwCQ6
	iJGEvMp0iBbM1AzSEI8RVEmkjBHlKZ1pmsZ+pA2jwMVA2p6GLDFV0VHwCD7sxMgAt1pyTU
	TGZ1+m5SvTla6O5oiy+smBATgV5Vbas=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-387-KURj0MMPO7e1OGqyt6rppw-1; Tue, 16 Jun 2020 12:18:09 -0400
X-MC-Unique: KURj0MMPO7e1OGqyt6rppw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A71C106B2E9;
	Tue, 16 Jun 2020 16:18:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6AF125C1BD;
	Tue, 16 Jun 2020 16:18:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F417D833B1;
	Tue, 16 Jun 2020 16:17:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05GGHqUF004021 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Jun 2020 12:17:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 12E44B07A4; Tue, 16 Jun 2020 16:17:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E89FB0793
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 16:17:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0105618A6660
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 16:17:50 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-477-XY42dA6sP1GJ5ST4ilbwfA-1; Tue, 16 Jun 2020 12:17:47 -0400
X-MC-Unique: XY42dA6sP1GJ5ST4ilbwfA-1
Received: by mail-qt1-f169.google.com with SMTP id q14so15885376qtr.9
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 09:17:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=hDUBhWMmYQXTrGFSAgncCOb2VDQL1dHF+/at1bGzmMc=;
	b=sujvkq1Vnhhxy9X+LAmQU+MNPPPsE9b7GXPcvIyaiE275VzuoaGXgGSpaTqhKJiCwC
	Ck1PWuJqvdfUwqzskqmfZM07bifeTcO+HMmQRzMeR34FmaY9Lo/WvZU1jQLS1j0Oex8u
	giCEDI5TwajsFhH9kxHQHj1ywrE/D0MyOb0jXErrvCf66gn/RA4HXEceu/CNaAW7V0kr
	ykie3zDBkYavGlEwhIIukRcr6fYrYmfciQYTxi4lhAwwSKShfdMCeUA3nn4hvxbHHUZQ
	+YEXXIxsK7idmQWuySUPwdXabEQMi0UsGT91VRZcpGdnK6D4MsRBopTLcosR1kq43eg0
	iidg==
X-Gm-Message-State: AOAM532iFWK+ZBHTh33KW+pAY5ceVGtZu7ylXKY7FfEDJyFdxQH6Idmp
	ExSBJUfT13qbGjzrwVhg+ncjb+vcriQ=
X-Google-Smtp-Source: ABdhPJxK5cSujFD70xdalS67vzr6fGcIATwq/eFfepT1jzyHOD3EYU12FO39ttysLsHcH0+ha4x0LQ==
X-Received: by 2002:ac8:4e8d:: with SMTP id 13mr21791215qtp.169.1592324266931; 
	Tue, 16 Jun 2020 09:17:46 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::241?
	(2606-a000-111a-8d0a-0000-0000-0000-0241.inf6.spectrum.com.
	[2606:a000:111a:8d0a::241]) by smtp.gmail.com with ESMTPSA id
	k10sm13963839qkh.47.2020.06.16.09.17.45 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 16 Jun 2020 09:17:46 -0700 (PDT)
Subject: Re: Prospects for an accessible and open version of Android?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<CAO2sX31RY2cas9Bg6sURkAWAuLvohJ6TBux4SE-NxAmaMuVPqg@mail.gmail.com>
Message-ID: <be1b173c-19e7-fe1f-d6a2-d7ecf3f264cf@gmail.com>
Date: Tue, 16 Jun 2020 12:17:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX31RY2cas9Bg6sURkAWAuLvohJ6TBux4SE-NxAmaMuVPqg@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

At one point, there was a kit available that would turn a Raspberry Pi 
into a laptop. I wonder if this is still a thing. As for running Linux 
on the Pi though, I would recommend Stormux

https://stormux.org/

On the Pi4, it runs a complete MATE desktop, using the Orca screen 
reader and RHVoice for speech. I believe Fenrir is also included and 
working if you just want text mode.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

