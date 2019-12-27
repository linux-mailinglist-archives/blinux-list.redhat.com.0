Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 0F48512BAC2
	for <lists+blinux-list@lfdr.de>; Fri, 27 Dec 2019 20:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577475622;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yC0MAdaqune9u07O+Th03UlDPd1ZImpOf41Ma0V92Ug=;
	b=Kf3jpvsHM2EMH3pWJknxhJ0+Ugg4T9d8mNe2EjXyAmq2DSvCkb9UL8/7SukO/xEj/RZzRK
	MohmPfIyunz/U1nR1iH0B/yltwnspu/5dl8JNvFASQhnALjuZgEoiYdWW+TpTjiO5ztno+
	b2UzhzO5i5Lvt5PRZNrOihuhe507aHk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-45-cn0dY5xzNLGRo4ef2nLYbQ-1; Fri, 27 Dec 2019 14:40:20 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4160800D41;
	Fri, 27 Dec 2019 19:40:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EBE461F30;
	Fri, 27 Dec 2019 19:40:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9D73F1809567;
	Fri, 27 Dec 2019 19:40:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBRJdvJn015157 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Dec 2019 14:39:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F3C1E20316EA; Fri, 27 Dec 2019 19:39:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EDAA720316E0
	for <blinux-list@redhat.com>; Fri, 27 Dec 2019 19:39:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D4E98185AB6C
	for <blinux-list@redhat.com>; Fri, 27 Dec 2019 19:39:54 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-330-X2Y6M1dsPzGXwXaxBQ2RWQ-1; Fri, 27 Dec 2019 14:39:52 -0500
Received: by mail-ot1-f50.google.com with SMTP id w21so29657646otj.7
	for <blinux-list@redhat.com>; Fri, 27 Dec 2019 11:39:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:content-language
	:thread-index;
	bh=Iwo89AfWZdGFGzHuRhYcwaYycZ81aJUk4TmSapr8W0Y=;
	b=Og+y7pW1xjbK/QtVDRQAmOXC4mPCum04jYCdtgq71F0azWO+wUOkR51iSFWIKosAIv
	VmyiE5LrueC6iI8FHf+4x/v18ZMZOrlPuMAXF/Jw7v84BSzEGgR3yzGTmhujNovgC3yM
	CW+h4PGSx2RIDU4WDrqzLDbUer7lH+B9I/T2dPVaK6mkaXvK9nRCk4l5uN6vKq3UEzt2
	m4OwlxijcIf3wECXk69B4o0RMNe9RkULz5Ugdo9KiUtaPYLG5sWs+yN45DUGRfQwFEId
	a6VK1LTE9iZTEnJ7wzalHjAP9oBRl+vGB5oDhmpoLaRL+HsEUcQDoPFcWPY6tumg4j/0
	Nhvw==
X-Gm-Message-State: APjAAAXV8DUZgEm9r37WygR0wNlk2aG04CVo1a31gjEV647hbSskVBgT
	oPUdVfITA7PdAMAlXUGpocNkNlAuTH8=
X-Google-Smtp-Source: APXvYqx+wkoDdbskB1O7BEIsoEh1dzzFfrpJpsNoRO82md2JjuIZ6NTDByPlHBB8TSTcwlGPso4TIw==
X-Received: by 2002:a9d:7757:: with SMTP id t23mr61134961otl.315.1577475591565;
	Fri, 27 Dec 2019 11:39:51 -0800 (PST)
Received: from DESKTOPAOE7QDN ([2600:1702:20f0:4420:5903:1a75:1005:8d37])
	by smtp.googlemail.com with ESMTPSA id
	m3sm7554329otf.13.2019.12.27.11.39.50 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Dec 2019 11:39:50 -0800 (PST)
To: <blinux-list@redhat.com>
References: <CF33CC84-F8ED-4994-B8A4-85478733D19B@gmail.com>
In-Reply-To: <CF33CC84-F8ED-4994-B8A4-85478733D19B@gmail.com>
Subject: RE: I question about how does a blind person get speech going on
	a	Ubentu System.
Date: Fri, 27 Dec 2019 14:39:49 -0500
Message-ID: <01a701d5bced$679f1e90$36dd5bb0$@gmail.com>
MIME-Version: 1.0
Content-Language: en-us
Thread-Index: AQJhzXjwR35A5gSorfMWdKnyTL+yeaa2Ph4w
X-MC-Unique: X2Y6M1dsPzGXwXaxBQ2RWQ-1
X-MC-Unique: cn0dY5xzNLGRo4ef2nLYbQ-1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

To get orca running, first do you have auto login or do you have to enter a
password?  If  you have a password than you should be able to just press
ault supper s and orca should come up talking.  I think this works after
login as well but don't remember as it's been sometime since I did an
install of ubuntu system.  Not sure off the top of my head but there is a
ubuntu accessibility list which should help with what  you want.


HTH.


Mathew.



-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Thursday, December 26, 2019 6:58 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: I question about how does a blind person get speech going on a
Ubentu System.

Hello my subject line says it all, I am totally blind. I downloaded a 
copy of Desktop Ubentu 18.3. This distribution has been installed in a 
virtual Machine. After installation the system is running the GUI 
Interface. I would like to use Orca four scream Reading access? How can 
I due this?

Sincerely Maurice Mines.

PS this email has been dictated to my Mac Book pro. Please forgive any 
mistakes?I hope that this is readable?	


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

