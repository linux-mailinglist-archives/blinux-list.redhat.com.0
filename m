Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 4C330184A35
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 16:07:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584112046;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zwGA9vEUaOZRYyZRuagomBCapojQflG4AdPZN2wvcKg=;
	b=fXAQK41bY0zMOBeFZZJ7HRcPaGSsdSccIKqGYX+TLNi0fk0aiIfspo8P/wcKAMeZkd2knQ
	HMmrEpHeV0Bx7dB+jdsc6RJ0OoZ3VigaKXtLvEyp8ieXr4xDeoB2Ie+GOMiorACHMNdxBJ
	SjnqvVI7psMjv0n8OatUOYh0gb0foO4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-241-8h9IzSgSO4qgA6UQzLrf_w-1; Fri, 13 Mar 2020 11:07:24 -0400
X-MC-Unique: 8h9IzSgSO4qgA6UQzLrf_w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 77148107ACC7;
	Fri, 13 Mar 2020 15:07:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE5565DA7B;
	Fri, 13 Mar 2020 15:07:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DD98E8449D;
	Fri, 13 Mar 2020 15:07:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DF74rE007851 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 11:07:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A1E9D103F26D; Fri, 13 Mar 2020 15:07:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D8E7103F26B
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 15:07:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00284800299
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 15:07:02 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-177-quE8ldqfM-WoY_C6uDWYRw-1; Fri, 13 Mar 2020 11:06:59 -0400
X-MC-Unique: quE8ldqfM-WoY_C6uDWYRw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48f8Dg0VlRz11XQ
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 11:06:59 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48f8Df6ZNTzcbc; Fri, 13 Mar 2020 11:06:58 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48f8Df672czcbW
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 11:06:58 -0400 (EDT)
Date: Fri, 13 Mar 2020 11:06:58 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Stormux is born.
In-Reply-To: <4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
Message-ID: <alpine.NEB.2.21.2003131105300.24751@panix1.panix.com>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02DF74rE007851
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

reddit would probably be another good platform for stormux.  Using pip3
install tuir as root will get you a terminal client for reddit if you
haven't got one yet.

On Fri, 13 Mar 2020, Linux for blind general discussion wrote:

> Date: Fri, 13 Mar 2020 09:16:31
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Stormux is born.
>
> I'm very happy to see this project continued, and I have already started working on the social media aspect and marketing and promotion. Stormux now has a Telegram channel that will announce news and release notes,
> https://t.me/stormux
> as well as a linked general discussion group at
> https://t.me/stormux_discussion
> Stormux will also soon be available on most of the usual social media channels including Facebook and Twitter. I'm happy to work with this project, and will do my best to keep everyone interested updated regarding its status and features.
> ~Kyle
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

