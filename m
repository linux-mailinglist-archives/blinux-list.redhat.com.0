Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 28688445145
	for <lists+blinux-list@lfdr.de>; Thu,  4 Nov 2021 10:40:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636018830;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=B4+u19JwzX1bMOZl1tg2CfPTBX0UGoFKKax/6pGUvPQ=;
	b=W1syLo+ZHg/1TXE6SYXd4CHB8bTCb8h4cEKvB7TXS/smeRoanjCnqLMB/E87CwjQRQFtSj
	KqycUMRGhOfWRldV6USmk65LX57uBHxDovZFXKIiCSjDeST9bK4APc4cQZlftwj/mNhPLH
	kbHMT7TElTn89Dbn/rSJbOt1+NIZvNo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-188-L9onEajwNZOKX5KKpYbARw-1; Thu, 04 Nov 2021 05:40:26 -0400
X-MC-Unique: L9onEajwNZOKX5KKpYbARw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C78F80A5C0;
	Thu,  4 Nov 2021 09:40:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E38D101E693;
	Thu,  4 Nov 2021 09:40:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 86D761801241;
	Thu,  4 Nov 2021 09:40:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A49e35n020983 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Nov 2021 05:40:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5372240C1252; Thu,  4 Nov 2021 09:40:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F182400F3E6
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 09:40:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 395911857F00
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 09:40:03 +0000 (UTC)
Received: from smtprelay03.ispgateway.de (smtprelay03.ispgateway.de
	[80.67.18.15]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-357-STIfMhyYNj6eQAb0CPwVNQ-1; Thu, 04 Nov 2021 05:40:01 -0400
X-MC-Unique: STIfMhyYNj6eQAb0CPwVNQ-1
Received: from [37.4.229.93] (helo=[192.168.178.104])
	by smtprelay03.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1miZEK-0005JP-01
	for blinux-list@redhat.com; Thu, 04 Nov 2021 10:40:20 +0100
Message-ID: <36d61180-6af7-d0cd-33c2-cad94e3d7b17@linux-a11y.org>
Date: Thu, 4 Nov 2021 10:39:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: anonymous postings
To: blinux-list@redhat.com
References: <CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<1C66A443-A56F-4B20-895C-DD5B7FB80918@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<20211102083235.nuzcsnnrrr2kxyno@begin>
	<CAPo=n-9A+Q-iGjhEbZbb=0bCdGHBtEsFZH8QoR4bn+AoudT3qA@mail.gmail.com>
	<fce16660-109a-fbea-ad65-75d77c682445@linux-a11y.org>
	<99C93103-154A-4522-A690-81731398338A@cfcl.com>
In-Reply-To: <99C93103-154A-4522-A690-81731398338A@cfcl.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Howdy Rich,

sorry, my fault. the last post was from me - chrys. I forgot about that 
the fact that the mail is hidden here. I try to take more care about 
that in future.

cheers chrys

Am 04.11.21 um 06:32 schrieb Linux for blind general discussion:
> Speaking only for myself, I find it very difficult to follow discussions on this list when the posters do not identify themselves in any manner.  To be clear, I don't really care if the name used is an alias (call yourself xyz123 if you like): I just want to know whether a message is coming from the same party that sent an earlier one.
>
> - Rich Morin
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

