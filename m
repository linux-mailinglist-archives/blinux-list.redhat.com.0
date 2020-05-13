Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 7AFE81D1CBF
	for <lists+blinux-list@lfdr.de>; Wed, 13 May 2020 19:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589392797;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=38GSVEEoXkPprYWPabZqBV7ophspBolNNNYA4IWHto4=;
	b=MhsEg8uNphA1ymofiBK8d2+M8IRQlqxaSQfCQU6EQfg4FyBkoabgIltk9KEgk/sGFGBUHO
	kqZ8IRqncH394L7U61QwzUGORIPXwSGr0e4UsAyJUjrnA8qdwor0dx1vD58qIZCkKP1ND2
	R14hU5mX+Zjxsf9ZEo8ygsqlQldZ1E4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-201-azmUjferO76CyqfvkX_PXQ-1; Wed, 13 May 2020 13:59:55 -0400
X-MC-Unique: azmUjferO76CyqfvkX_PXQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2AE5474;
	Wed, 13 May 2020 17:59:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9283E1C94D;
	Wed, 13 May 2020 17:59:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 444D94E984;
	Wed, 13 May 2020 17:59:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04DHxjDo015199 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 May 2020 13:59:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D72E1117928; Wed, 13 May 2020 17:59:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA8A9115E1C
	for <blinux-list@redhat.com>; Wed, 13 May 2020 17:59:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E540A800677
	for <blinux-list@redhat.com>; Wed, 13 May 2020 17:59:41 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-370-3CLjcUBZO6aB_j10gSsU4w-1; Wed, 13 May 2020 13:59:39 -0400
X-MC-Unique: 3CLjcUBZO6aB_j10gSsU4w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49Mj9l0ksvzxXm
	for <blinux-list@redhat.com>; Wed, 13 May 2020 13:59:39 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49Mj9k71QLzcbc; Wed, 13 May 2020 13:59:38 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49Mj9k6V8yzcbV
	for <blinux-list@redhat.com>; Wed, 13 May 2020 13:59:38 -0400 (EDT)
Date: Wed, 13 May 2020 13:59:38 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: b s d and orca
In-Reply-To: <8e35d90a-e440-5198-5135-6f3e0a01bd40@gmail.com>
Message-ID: <alpine.NEB.2.21.2005131357550.23538@panix1.panix.com>
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
	<b12267b0-944d-d609-53dd-11e9375f002d@gmail.com>
	<FCD3A752-75FC-4A33-BEAE-D96D42DB15DB@gmail.com>
	<b85fb8d0-a4ac-e83f-c82c-38a7886b6bdf@gmail.com>
	<8D288BBE-1C57-4394-AC55-653FD5B17442@gmail.com>
	<8e35d90a-e440-5198-5135-6f3e0a01bd40@gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Some earlier versions of mate called orca screen-reader and there was and
maybe still is an f4 key that toggled accessibility on and off with system
default set as off.



--

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

