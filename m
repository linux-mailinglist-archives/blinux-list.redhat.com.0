Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 373093ADB38
	for <lists+blinux-list@lfdr.de>; Sat, 19 Jun 2021 20:07:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624126038;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=K0C1btF7RzFnFnXhlkp4AZ4h+rpDFas+kNsj03ELOa8=;
	b=XORT7Das6Jzg2iV/uc/10SIJGnUAm6t/jPPtJxsCK1R1giGaY3TM4cNKkYWWi4Jna523xP
	c1UqPL/B8d2IOVzfgxg1P2WCJ2QMxNFsSk4dIBKki+jtPrJqInfSnQc9SVaolqJUbQJ34R
	eqma5mVGmomE/zpURyL6nh3PI/vQ8bo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-97-iXuQdQqBPB2tmqLgKqAwPA-1; Sat, 19 Jun 2021 14:07:16 -0400
X-MC-Unique: iXuQdQqBPB2tmqLgKqAwPA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B3285343CD;
	Sat, 19 Jun 2021 18:07:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3E9B5C22A;
	Sat, 19 Jun 2021 18:07:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E534D1809C99;
	Sat, 19 Jun 2021 18:07:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15JI3k7X021413 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Jun 2021 14:03:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E6F5643683; Sat, 19 Jun 2021 18:03:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF135568C2
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 18:03:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5EE5F801E6D
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 18:03:42 +0000 (UTC)
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
	[209.85.218.66]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-244-Mr0ddz5TOGuQcezW5twQyg-1; Sat, 19 Jun 2021 14:03:40 -0400
X-MC-Unique: Mr0ddz5TOGuQcezW5twQyg-1
Received: by mail-ej1-f66.google.com with SMTP id gt18so21246086ejc.11
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 11:03:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=u7zUNUlaKTF7UL1tQmE1uN0CMD6Xx0iGEATMM92d5hE=;
	b=eJDxw7kgOrXz7HwDf6cDYN42nEP6i/XLPLdoVCJJsRVgch4mU42ohMipz23SCb73cU
	6WxYu4/6X/15MgATh/S8Nj6Fgt2Q9AugemUBU7xsY0+hlUy0dWhgrBNnXEtauETqi/AM
	TGMIyWr+CaklIfRQLLRU/M/IbY7wbKOOE5doW7ZhSTovCLeJBqU9KpNm3Mabmp29N6e3
	FnjH3YKePsYdK1FpYael2aUM4OA1Nu+0oFVl2XfHzJSgoe7LTE7oMsqD3iA0q2CnriKG
	3xOesa7x4CG8WDJmH/wRuKC7w4NKgaZ1H1p1yskNUnTEnSe0+/K75+esSOf4TaBNUX9g
	7cnQ==
X-Gm-Message-State: AOAM5311D8AFcYXX+XhEeAE75p/0QddZXHmytbsQ50Cy81iRc6iwJP9q
	QuHWbyP1fTJYukGjwPTb1FKh7i+YigwPxNfUpZfvvnDA
X-Google-Smtp-Source: ABdhPJzJHrb6+Ug6wNAXOGOxuydlXeQKLT5S19qdqyUJ4vqINLK0VD4DqXc1SVxY3j3jjRxkkk5TCfdA3Ae3e3SJHgs=
X-Received: by 2002:a17:907:6e8:: with SMTP id
	yh8mr14787616ejb.80.1624125818732; 
	Sat, 19 Jun 2021 11:03:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:ecf2:0:0:0:0 with HTTP; Sat, 19 Jun 2021 11:03:38
	-0700 (PDT)
In-Reply-To: <CAO2sX31MW+14At-s9oXoDpdi7YHLH+Gj=LQtug_EcpAjcTVzgw@mail.gmail.com>
References: <CAO2QrD4sNDb913pvuHF1UXQmkTa96kwfyPYz+tbW8OAgSahBTw@mail.gmail.com>
	<CAO2sX32GdWh4kcy1eA=g+s287oYsZm2ZE+gsg0UOMLVO0-6XAQ@mail.gmail.com>
	<alpine.NEB.2.23.451.2106191320550.21342@panix1.panix.com>
	<CAO2sX31MW+14At-s9oXoDpdi7YHLH+Gj=LQtug_EcpAjcTVzgw@mail.gmail.com>
Date: Sat, 19 Jun 2021 23:33:38 +0530
Message-ID: <CAO2QrD6DD6r67u-7bQDEk1Ff+d=g9azSEJ-3xMQEKfC4S+9DNA@mail.gmail.com>
Subject: Re: Accessible linux distro for raspberry pi?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
Actually I tried stormux but left it because the image was around 1 year old.
Can you please give the e-mail ID of the raspberry pi mailing list?
I tried raspbian pi, but it didn't work, after installing mate and
orca it kept on saying that press alt+control+space to enable
accessibility but when I pressed shortcut keys, they didn't work

On 19/06/2021, Linux for blind general discussion
<blinux-list@redhat.com> wrote:
> Ah, I wasn't aware Jenux could be used on anything other than x86 machines.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

