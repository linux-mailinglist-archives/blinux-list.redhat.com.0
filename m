Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 837172E7AD0
	for <lists+blinux-list@lfdr.de>; Wed, 30 Dec 2020 16:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609343936;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=u0B6oAZReL356glTV+GLDv1K9EWAGPKM4vbd74dOPyQ=;
	b=IEUIZy4nN2Em7YE+KNphyHFUcb3dcJ8o/t4D7Fo92PlR2KZRP0UDJMuruOrgwYrrZEqkQn
	BOWrUFdS5ZsygAJM40sghDJ1DObsACH+M336XndTOLaj2ZDthj0koJCVM3oqwMGqSQVZ5k
	mkMat5cWF6LXSQLgK5DN5C7xSL5qAdk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-110-pcwUL_rSMQ6Xt9xpnbMing-1; Wed, 30 Dec 2020 10:58:54 -0500
X-MC-Unique: pcwUL_rSMQ6Xt9xpnbMing-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B8528800D55;
	Wed, 30 Dec 2020 15:58:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 114C310016FB;
	Wed, 30 Dec 2020 15:58:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9301B5002D;
	Wed, 30 Dec 2020 15:58:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BUFwZ3K009133 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Dec 2020 10:58:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 58B7E63795; Wed, 30 Dec 2020 15:58:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5109C63536
	for <blinux-list@redhat.com>; Wed, 30 Dec 2020 15:58:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 26738858287
	for <blinux-list@redhat.com>; Wed, 30 Dec 2020 15:58:33 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-6-y9Yh6rElOaazjqWmJ33h_A-1; Wed, 30 Dec 2020 10:58:30 -0500
X-MC-Unique: y9Yh6rElOaazjqWmJ33h_A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4D5bYL1bV9zS2N
	for <blinux-list@redhat.com>; Wed, 30 Dec 2020 10:58:30 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4D5bYL19Tqzcbc; Wed, 30 Dec 2020 10:58:30 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4D5bYL0t65zcbW
	for <blinux-list@redhat.com>; Wed, 30 Dec 2020 10:58:30 -0500 (EST)
Date: Wed, 30 Dec 2020 10:58:30 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: No Monitor Environment
In-Reply-To: <C4F90F85-AD5C-476C-9AE2-B77B968E52CA@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2012301055490.1227@panix1.panix.com>
References: <02c701d6da1f$fdf1c550$f9d54ff0$@kellford.com>
	<alpine.NEB.2.23.451.2012241448310.21263@panix1.panix.com>
	<9c34ebe2-14fa-d2b1-360b-e5a8e1205347@kellford.com>
	<a35cd07a-9e1f-97bf-c7a7-d8f06c9a778f@gmail.com>
	<C4F90F85-AD5C-476C-9AE2-B77B968E52CA@gmail.com>
MIME-Version: 1.0
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

--monitor=dummy on linux command line of grub.cfg may help.  RedHat in the 
past needed a mouse attached to start, I don't know if Fedora continued 
that sorry tradition but I remember the first time I tried installing 
Redhat 5.0 with sighted assistance we ran into that road block.



On Wed, 30 Dec 2020, Linux for blind general discussion wrote:

> I have found that Ubuntu and Fedora seem to need a monitor, while arch linux and also slint seem not to need one.
>
>
>> On Dec 29, 2020, at 2:54 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>> Best I've been able to find is a monitor dummy plug. I can't seem to find a single plug for some reason, but I did find a pack of 3 for $11. Amazon sells such plugs, but I'm sure they can be found elsewhere as well. Best may be to look in your favorite computer/tech site for
>> monitor dummy plug
>> They say they do exactly what you need, making a monitor appear on the system where one is not normally connected. Hope it helps.
>> ~Kyle
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>
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

