Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 1390826C2EF
	for <lists+blinux-list@lfdr.de>; Wed, 16 Sep 2020 14:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600260538;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8mkYQU4ObFs3YYb970Zx4v9NFv6J8KQ64NciYStJi2g=;
	b=TpMIx1Y+LKWzGdM1HPf4o4ft/4HTHNZJo7DYTJ543M3u8YHZmCH/CalRKIoz3Nlc2Z8fsr
	iwWaAS+fl9aLfBMdVQ3LZ3Wf+7tQpWMkVxxAo+OsANDZk4hojXYCJ2JP6EQWY+DWyScX5m
	MDTEhlXjN6HVOEKOm8qIIbXSB84xJ48=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-2oQjmAieOpu8rP2gApRxJA-1; Wed, 16 Sep 2020 08:48:55 -0400
X-MC-Unique: 2oQjmAieOpu8rP2gApRxJA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0CDBB106B348;
	Wed, 16 Sep 2020 12:48:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE0125C221;
	Wed, 16 Sep 2020 12:48:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A53A183D033;
	Wed, 16 Sep 2020 12:48:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08GCmS8T001182 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Sep 2020 08:48:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 65643F51BB; Wed, 16 Sep 2020 12:48:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 60481F51B8
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 12:48:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71EE49063AB
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 12:48:25 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-437-mU_xetTuNWKo9GHhy-Mvvg-1; Wed, 16 Sep 2020 08:48:23 -0400
X-MC-Unique: mU_xetTuNWKo9GHhy-Mvvg-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 2F3BE5C04B4
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 08:48:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Wed, 16 Sep 2020 08:48:23 -0400
X-ME-Sender: <xms:lgliX8Yw9S56Aup0k5VbFT-zGv07uhyn2oh-k6VUiE95IctZXF1cEA>
	<xme:lgliX3bEtTqHdjyG7umgNAC9-xI4JznYJjjbqQdvH15JMGPazxt0i1tJHOGwLnsGn
	iMSk3bIc3wA4Sj0Mus>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrtddvgdehiecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhgfgggtsehttdertd
	dtredvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeefuddvuddvvefffeevge
	ejfffggfeiiefgtdeugfehgfejhedtieelhfeuleelffenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:lgliX28CD7ZmhNc1D4d3cxU7ypG9TdzN_H4Gan9789ZA9zjnT4oD3g>
	<xmx:lgliX2ovy8UOnMi20jCUUUKNuo3AQzh4Irag0cSlvrX0I5rBZHajFA>
	<xmx:lgliX3owGKJvgb84S5H2kmUk0jDQNur6MQLdrpW7d4ZlfsyM-i6Rpg>
	<xmx:lwliX02u1OkXMIBqM5j-E0U51ceJRXzsh37aCIZMudBUc4KgIHlSmA>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 9463F3280059
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 08:48:22 -0400 (EDT)
Date: Wed, 16 Sep 2020 05:48:21 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Strange Happenings in mpv?
In-Reply-To: <20200916093407.2f4a5577@telaviv1.shlomifish.org>
Message-ID: <alpine.DEB.2.23.453.2009160545180.3931393@chime>
References: <alpine.DEB.2.23.453.2009151328080.2287550@chime>
	<20200916093407.2f4a5577@telaviv1.shlomifish.org>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Thanks Shlomi for your analysis. Interesting LYNX thought that was a zip 
but certainly it plays fine, but my arrows still didn't work  until I copy 
it to another location.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

