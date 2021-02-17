Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9E63431DD7E
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 17:40:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613580044;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9mY4aZtdby56FatJUgIi2gebPfTJ82AaZ3vVqhb76KQ=;
	b=cjg0NTHIZf7AyFsxEH3bW5s93nBgFc1gdYNtw0aHLi88kBSFIc/vKaP2kdnI63r8AP9a4s
	GtV5cVH76fIXSAiidxwcCeaTX/CRoOzPxNDbCxo0h8lBqtzw6pqX132KwXoZb/aT9x9sK1
	chcIAwzWUZvlfeP+YuxNhYgXvFj/NyE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-sMLZwLOUM4iW-T44crjeyQ-1; Wed, 17 Feb 2021 11:40:42 -0500
X-MC-Unique: sMLZwLOUM4iW-T44crjeyQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A33F835E22;
	Wed, 17 Feb 2021 16:40:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53CAC6A03D;
	Wed, 17 Feb 2021 16:40:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 25ABC58074;
	Wed, 17 Feb 2021 16:40:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HGVUIN028932 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 11:31:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 37E5C2062920; Wed, 17 Feb 2021 16:31:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32B11206291D
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:31:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 969F38007D9
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:31:25 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
	[209.85.215.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-196-CYOwViPEM96cnrx-Zq8KDg-1; Wed, 17 Feb 2021 11:31:23 -0500
X-MC-Unique: CYOwViPEM96cnrx-Zq8KDg-1
Received: by mail-pg1-f178.google.com with SMTP id z21so8815107pgj.4
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 08:31:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:reply-to:to:subject:in-reply-to
	:message-id:references:user-agent:mime-version;
	bh=kRub2RCGh6tQhYtorfObdwCA89b6EbrIqc3GCxYLCvI=;
	b=q5rUUsZtuzr4W3N5w2CqDlxvTZIoSi5tATMb1PSx49OcsyIvRvqI4HRQ5soIZ48TC4
	Q/ZLypxzTmRUZoALTX3Zgd9ihSdP3F/Jl6avbGB6RThlLlUPlmZNOfmVjkBm7G+ks75y
	+K+VjucFqi4xThVKDhCDLKFKoQ8sJTxdjmjmBY6fErxA2QjNqeN4lKytvgMIcvoWoYJw
	nwU9qhxwxm/fUpxmXVFzfEl5Ll43E5zCeFz4vGWnOgelXTbZUsjH6XY7fMTPIUfEIzHG
	foqEo35RjTeIkirgLsHgN+bWuZIlOy9G2CAbG1usg/56co+BRjVwdGfLqkCeFLodordW
	PLiA==
X-Gm-Message-State: AOAM532lAKllc/O5WkNzItorMuW01Nay5FihatlDrVWrqkzD9WKike6o
	UDg6gqpcRisV1uJdpWG+TTtd8WIlvZs=
X-Google-Smtp-Source: ABdhPJxx05pfQPHiQrm93aDuAjE7Dv5nKZVbMt5ZirfacizeQsVYbJb/KAvGfuG2Ocvt8B4p4JZC5w==
X-Received: by 2002:a05:6a00:1353:b029:1c5:8a8d:7ee6 with SMTP id
	k19-20020a056a001353b02901c58a8d7ee6mr4162pfu.13.1613579481864; 
	Wed, 17 Feb 2021 08:31:21 -0800 (PST)
Received: from precision-M2800 (207-118-104-175.dyn.centurytel.net.
	[207.118.104.175]) by smtp.gmail.com with ESMTPSA id
	t192sm3553632pgc.54.2021.02.17.08.31.20 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 17 Feb 2021 08:31:21 -0800 (PST)
Date: Wed, 17 Feb 2021 08:31:11 -0800 (PST)
X-X-Sender: tom@precision-M2800
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is this possible?
In-Reply-To: <Pine.LNX.4.64.2102171119510.1319856@server2.shellworld.net>
Message-ID: <alpine.DEB.2.22.394.2102170827320.36595@precision-M2800>
References: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
	<alpine.NEB.2.23.451.2102171111070.5642@panix1.panix.com>
	<Pine.LNX.4.64.2102171119510.1319856@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

As far as I know all additions of ubuntu have a shell of some sort.  All 
the graphical stuff run on top of a shell.  If ssh is installed and 
configured then you should be able to ssh into any version of ubuntu.  You 
will, of course not have the graphical desktop.  I do this with virtual 
machines all the time some running as servers without graphics and some 
running a desktop.

Tom


On Wed, 17 Feb 2021, Linux for blind general discussion wrote:

> I am not talking about shellworld, as I am using it now.
> In fact I  can ssh into shellworld from my DOS computer.
> However, shellworld is a shell, not a graphical desktop  edition of Ubuntu.
> same can be said for the shell dreamhost, who is the hosting service for my 
> office, provides its clients.
> My question is related to an entirely different issue, where a work associate 
> asked if one could do what I do, but into a strictly graphical  desktop of 
> Ubuntu.
>
>
>
> On Wed, 17 Feb 2021, Linux for blind general discussion wrote:
>
>> shellworld.net is running ubuntu, so that ought to be possible unless 
>> misconfigured.
>> 
>> 
>> On Wed, 17 Feb 2021, Linux for blind general discussion wrote:
>>
>>>  Hi folks,
>>>  Is it possible to ssh into a graphical desktop edition of Linux, Ubuntu
>>>  for example?
>>>  Karen
>>> 
>>>
>>>  _______________________________________________
>>>  Blinux-list mailing list
>>>  Blinux-list@listman.redhat.com
>>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
>> 
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

