Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D4C482850
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:23:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641065021;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZroEl+It5Q0ud/WW8XXu3ymwfBgkTJHBHmByrbDRZD0=;
	b=TCnOBCc/nfjAZAAz1hFG7FlSZT8AjwoErT0N/+eggiRaXMPSOJsq5ZP9FHJJCdb9TuUdKZ
	ow8qNGyalDthE/F/pwadvZLe3JFKl9NFZcXa4j0TJieUmHawwlJq/13mDf7DzE+LiK//Gs
	3vklj3bmnYEks49KB2U6IVShWKybzEQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-270-gIjxF6hOPjKxXAZlHOK6WQ-1; Sat, 01 Jan 2022 14:23:37 -0500
X-MC-Unique: gIjxF6hOPjKxXAZlHOK6WQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AA1648042A2;
	Sat,  1 Jan 2022 19:23:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E1305C1A1;
	Sat,  1 Jan 2022 19:23:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 46E281806D03;
	Sat,  1 Jan 2022 19:23:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201JNWXF015048 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:23:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3278C2166B14; Sat,  1 Jan 2022 19:23:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C5422166B40
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:23:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 16A873C02B45
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:23:29 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-621-xPA-ERDOPzuVbK4a9UEZKQ-1; Sat, 01 Jan 2022 14:23:27 -0500
X-MC-Unique: xPA-ERDOPzuVbK4a9UEZKQ-1
Received: from email.seznam.cz
	by email-smtpc6b.ng.seznam.cz (email-smtpc6b.ng.seznam.cz
	[10.23.13.165]) id 2a3793d03fafc08a2bdd62cc;
	Sat, 01 Jan 2022 20:23:26 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay12.ng.seznam.cz (Seznam SMTPD 1.3.134) with ESMTP;
	Sat, 01 Jan 2022 20:23:20 +0100 (CET)
Subject: Re: Recovering shift deleted data
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
	<92483ba2-4fcb-c333-5025-257f16e3dc20@gmail.com>
Message-ID: <4bc845a3-1923-4d72-6017-ddc37263cbd1@seznam.cz>
Date: Sat, 1 Jan 2022 20:23:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <92483ba2-4fcb-c333-5025-257f16e3dc20@gmail.com>
X-szn-frgn: <true>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello, I have ext4, yes.

Vojta.

Dne 01. 01. 22 v 20:18 Linux for blind general discussion napsal(a):
> I'm guessing/hoping the partition that has your deleted file has an ext4 
> filesystem. You should be able to recover the lost file using 
> extundelete, although if you write anything at all to the SD, it will 
> become less likely that your file will be recoverable. It seems that 
> other filesystems make it more difficult, if not impossible to recover 
> deleted files.
> 
> ~Kyle
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

