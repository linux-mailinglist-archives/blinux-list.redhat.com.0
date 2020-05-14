Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 3E6821D2B23
	for <lists+blinux-list@lfdr.de>; Thu, 14 May 2020 11:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589448009;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZENoIVh6B1T8/ddK/F+K1t4ol4/ERY8bGWDodsl4yj8=;
	b=brksYtpe6N/PJDaAjV6bsCCZxcQWUvbqKQpP0M+lLy6OsYE8BhDGHft/I9nZiYFVYQmzNm
	5McGK2F4O5wBmWbrViEpWYCxDD5XFilaWEBVpNGlE9oQzryn3Nhwb54DsHGp7qYmb6bbN1
	QoGHuJkHEvZe6D36EsP8wJ+V6+FjhN4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-100-pSSTi8v-OMaaEgYOOXB--A-1; Thu, 14 May 2020 05:20:07 -0400
X-MC-Unique: pSSTi8v-OMaaEgYOOXB--A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D24871009610;
	Thu, 14 May 2020 09:20:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D2AA5C1D3;
	Thu, 14 May 2020 09:20:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC4BC1809547;
	Thu, 14 May 2020 09:19:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04E9Jp01009595 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 14 May 2020 05:19:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 54C6D13D70A; Thu, 14 May 2020 09:19:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 489BA108BF2
	for <blinux-list@redhat.com>; Thu, 14 May 2020 09:19:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 597B71859171
	for <blinux-list@redhat.com>; Thu, 14 May 2020 09:19:48 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-69-YXWQX4b4PtKIfn_vSMVMJg-1; Thu, 14 May 2020 05:19:46 -0400
X-MC-Unique: YXWQX4b4PtKIfn_vSMVMJg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49N5bP51Qdzm7k
	for <blinux-list@redhat.com>; Thu, 14 May 2020 05:19:45 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49N5bP3vr9zcbc; Thu, 14 May 2020 05:19:45 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49N5bP3NxNzcbW
	for <blinux-list@redhat.com>; Thu, 14 May 2020 05:19:45 -0400 (EDT)
Date: Thu, 14 May 2020 05:19:45 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: b s d and orca
In-Reply-To: <def8715b-a2d0-a40a-1df8-af05a4fc345f@gmail.com>
Message-ID: <alpine.NEB.2.21.2005140518500.10866@panix1.panix.com>
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
	<b12267b0-944d-d609-53dd-11e9375f002d@gmail.com>
	<FCD3A752-75FC-4A33-BEAE-D96D42DB15DB@gmail.com>
	<b85fb8d0-a4ac-e83f-c82c-38a7886b6bdf@gmail.com>
	<8D288BBE-1C57-4394-AC55-653FD5B17442@gmail.com>
	<8e35d90a-e440-5198-5135-6f3e0a01bd40@gmail.com>
	<alpine.NEB.2.21.2005131357550.23538@panix1.panix.com>
	<def8715b-a2d0-a40a-1df8-af05a4fc345f@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If orca from alt-f2 doesn't work, maybe try screen-reader and if
screen-reader quickly dies screen-reader --replace.

On Thu, 14 May 2020, Linux for blind general discussion wrote:

> Date: Thu, 14 May 2020 00:37:45
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: b s d and orca
>
> Some earlier versions of mate called orca screen-reader and there was and
> > maybe still is an f4 key that toggled accessibility on and off with system
> > default set as off.
>
> Not sure about F4, but if enabled, the key should be alt_super_s. The problem
> is that it appears to be disabled by default. Running orca from the alt+f2
> window should work though.
>
> ~Kyle
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

