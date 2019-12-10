Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id BEA0411917C
	for <lists+blinux-list@lfdr.de>; Tue, 10 Dec 2019 21:06:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576008380;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LaGDkmY+hWzP1/POmK2vh73EIOu17R0S4EX4+lMG7PM=;
	b=JUkSNwCZGSCBOmD2FM0sgnb5ERte3edlB0a0k3+QN2hK2m3+bjlpwW3MvgZWQZlD1Sj6Lb
	8KvVOklF3+m6rs5dJe/ccS4n9VpPp938u8TneggjtKFuPys+IW6daPbCHjMvkSj0yuNcuK
	hlZIP8GsV9IFmGKSSW6TzFlba4RyMx4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-txOb_pWxNQesC5eVQegq_Q-1; Tue, 10 Dec 2019 15:06:16 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E011100551B;
	Tue, 10 Dec 2019 20:06:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD22761F36;
	Tue, 10 Dec 2019 20:06:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0A0668356F;
	Tue, 10 Dec 2019 20:06:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBAK64uS024254 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Dec 2019 15:06:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4D631F89E6; Tue, 10 Dec 2019 20:06:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46EF6F89F0
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 20:06:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B2DE8DC460
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 20:06:01 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-293-zniY_H4pM_a0H4HNI2_xWA-1; Tue, 10 Dec 2019 15:05:58 -0500
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 229C78C0424; Tue, 10 Dec 2019 20:05:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 1D38F8C030A
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 15:05:57 -0500 (EST)
Date: Tue, 10 Dec 2019 15:05:57 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google high security and linux command line email programs
In-Reply-To: <20191210194225.GA18557@panix.com>
Message-ID: <Pine.LNX.4.64.1912101505060.11614@server2.shellworld.net>
References: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
	<20191210194225.GA18557@panix.com>
MIME-Version: 1.0
X-MC-Unique: zniY_H4pM_a0H4HNI2_xWA-1
X-MC-Unique: txOb_pWxNQesC5eVQegq_Q-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBAK64uS024254
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I just discovered we have  surfraw here,  How does one use it to access 
gmail?
Karen


On Tue, 10 Dec 2019, Linux for blind general discussion wrote:

> Check out surfraw.
>
> On Tue, Dec 10, 2019 at 02:26:35PM -0500, Linux for blind general discussion wrote:
>> Has anyone here gone high security with google and generated an
>> app-password for their command line email apps?  If so, which apps?
>> I have and can use a few different apps but really want to know what
>> google will be limiting me to with two-factor authentication and an
>> app-password before I enable two-factor authentication.  If there's no
>> apps this can be done with, no point enabling two-factor authentication
>> and trying to generate an app password for any of these.  When google
>> security is after users to enable higher security and google recognizes
>> linux devices have been and are likely to continue being used on an
>> account those messages ought to include a list of apps that will work in
>> linux.
>>
>>
>>
>> --
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>
> -- 
> Rudy Vener
> Website: http://www.rudyvener.com
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

