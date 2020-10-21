Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B76C7294C76
	for <lists+blinux-list@lfdr.de>; Wed, 21 Oct 2020 14:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603282917;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+i61Jnvmk58LVpjOA+IeMrz1ob25NI1i9vpMvVK2Kv8=;
	b=J88p3iCZVF+BDYsUjpFT778WB3lg0941E7ZwloRl5iY6S4eHMv+aH21mC47aBVLfOo188g
	1fM2D0uHnLLs7MdF0O2ku5HX4V3IBVEzFcUwgZ4Qro6SVBDeyDfSCA9Z/lPzbN2HqtG0YG
	XpQ7JGGzVBjUHwRZiQToykyWSosjwK4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-565-h9pOwn18PYmxtmA76qv2CQ-1; Wed, 21 Oct 2020 08:21:54 -0400
X-MC-Unique: h9pOwn18PYmxtmA76qv2CQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE429EDBC2;
	Wed, 21 Oct 2020 12:21:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C16BA6EF44;
	Wed, 21 Oct 2020 12:21:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D8BFF1826D39;
	Wed, 21 Oct 2020 12:21:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09LCLSY5003028 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Oct 2020 08:21:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 30862200E1F0; Wed, 21 Oct 2020 12:21:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B313200E21D
	for <blinux-list@redhat.com>; Wed, 21 Oct 2020 12:21:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CAF8D805C1A
	for <blinux-list@redhat.com>; Wed, 21 Oct 2020 12:21:25 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com
	(wout2-smtp.messagingengine.com [64.147.123.25]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-464-KMlWoWmlNmGfX_1z_gXIeA-1;
	Wed, 21 Oct 2020 08:21:23 -0400
X-MC-Unique: KMlWoWmlNmGfX_1z_gXIeA-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 7ADEE6E4
	for <blinux-list@redhat.com>; Wed, 21 Oct 2020 08:21:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute2.internal (MEProxy); Wed, 21 Oct 2020 08:21:21 -0400
X-ME-Sender: <xms:wCeQX4VdTBI3g30ppD2rYJlee4T19SEexjqw96IQ7kJ7CkZOiY86-g>
	<xme:wCeQX8lrGzvsD18rYFqTGFkZKQilTOGVNAzzjNNU62NRcLGPR75PyzB3F1mlCcS4s
	8nNhZBbLPud1-IAZaA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrjeehgdehvdcutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghr
	thcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrg
	htthgvrhhnpeejffffudejleeuffeivedtieettedtkefggfekvdeujeetkedtheefhffh
	vdetkeenucfkphepuddtgedrudejvddrfedrieefnecuvehluhhsthgvrhfuihiivgeptd
	enucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhh
	rhgvhidrtghomh
X-ME-Proxy: <xmx:wCeQX8bSL3AJXpZ62RRQA0i_EYVYb994VMg_RA8tzvLmx6McyzQvTA>
	<xmx:wCeQX3UOJgMcFvV15spD7bfHjmWIHuvpe7gNgYo7EJt1ojCWaLqhYQ>
	<xmx:wCeQXykKUY7F2DT5dIEjEXrBx1bN4sAHgKeNQPelmpB-78Z49KKkbA>
	<xmx:wSeQX-wTd3UDWDnw05eY0VAds9v90aWgfDziv9mSqiotlJkzF5hpyA>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 9D586328005E
	for <blinux-list@redhat.com>; Wed, 21 Oct 2020 08:21:20 -0400 (EDT)
Date: Wed, 21 Oct 2020 05:21:19 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: DecTalk 4Second Delay After Typing?
Message-ID: <f8dfe061-f6-d825-fa9c-973179ef39ed@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: This mystery comes up supposedly after hardware changes in my 
Debian machine. Drives-and-lvm changes as I had a drive fail. Anyway I 
have a DecTalk U S B running Speakup. If I type "hello world" directly in 
to the DecTalk, it talks immediately, but in normal uses, lately I have an 
anoying 4 second delay after any typing or keystroke reading. Can any1 
please suggest a way to solve this? 1 of my DecTalk experts thinks Speakup 
has an exclusive controll of the synth. I am up on the newer 5.9.0.1 
kernel in sid. Thanks so much in advance for all solutions. I did write 
the Speakup list but I don't think my message ever posted.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

