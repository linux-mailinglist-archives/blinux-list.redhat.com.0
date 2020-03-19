Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id CC5DD18C394
	for <lists+blinux-list@lfdr.de>; Fri, 20 Mar 2020 00:25:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584660331;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+i72iwF8KI43pSWm9Go0ZPDtUeBDW/mDQ1efK0cRDgU=;
	b=Ai4a+n2eoTxyRofy8XAQRtVwTz1QWDK/ER0np0/XgdHLcVFdUWKjDHi0tEluijgYGCyXeN
	rOQs5mHUPs2c93wUyA6VuVA5PJ9dUxRpkP3CePPl/AmtLJV2XqBObbP+ff9G+uz19Jrlkr
	jSuKtgsBOzXi5D9LL7sJtFhdaZLUK2Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-128-kv1-TGrXO7-K6v_M5uIhyg-1; Thu, 19 Mar 2020 19:25:28 -0400
X-MC-Unique: kv1-TGrXO7-K6v_M5uIhyg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A5810800D4E;
	Thu, 19 Mar 2020 23:25:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ECF4B6EFB0;
	Thu, 19 Mar 2020 23:25:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6A4FF8701F;
	Thu, 19 Mar 2020 23:25:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02JNP84g027075 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Mar 2020 19:25:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1C4BF104CDB2; Thu, 19 Mar 2020 23:25:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18DB2104CDAF
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 23:25:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 886D18007A4
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 23:25:05 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-400-rPLP-OWPPWGyruhrfPEN7g-1; Thu, 19 Mar 2020 19:25:02 -0400
X-MC-Unique: rPLP-OWPPWGyruhrfPEN7g-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 4C1AD8C048C; Thu, 19 Mar 2020 23:25:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 434108C02FE
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 19:25:01 -0400 (EDT)
Date: Thu, 19 Mar 2020 19:25:01 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: What distribution will work with the virtual machine on a Mac?
In-Reply-To: <95c9eba9-d7c9-586d-6e17-5ec3f3c001ec@gmail.com>
Message-ID: <Pine.LNX.4.64.2003191921100.18538@server2.shellworld.net>
References: <22c752d8-c3ab-f251-7776-c80067fb6b59@gmail.com>
	<8A15AD66-5504-4D26-A304-7B98EE4F3D09@gmail.com>
	<95c9eba9-d7c9-586d-6e17-5ec3f3c001ec@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02JNP84g027075
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

This question brings up another fortified by a discussion  on the freedos 
list.
someone has built a talking edition of freedos run in a virtual 
environment using the ASAP dos screen reader and the Braille & speak 
synthesizer  via emulator.
Have any other synthesizer voices been written to be emulated dubbletalk or 
dectalk for example?
Surely  braille and speak is not the only one.




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

