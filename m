Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 77A4F20A65E
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jun 2020 22:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593115837;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aAcqfLh86BEvGIwnOludM59mS13jmpyMdWQMidyx6MI=;
	b=WITj4ARrwVpmcSUjcameOCc9CkK2SbTRhY7TzLGUrR0yt3Sn66vhdFuefNYqt5Sx3fUl0a
	5OaFdq6QamXuc99DOPR0xjegh9n9pqCptS09w7yoX/3w2vzoF0A7LGSI0ReP8QtuqpVoIX
	NdXbBAPeD/mrWJ7GlEhVfGJlDT+SFAc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-T7ERJlDcO3yb3ckRno5q0Q-1; Thu, 25 Jun 2020 16:10:10 -0400
X-MC-Unique: T7ERJlDcO3yb3ckRno5q0Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A26B64AD8;
	Thu, 25 Jun 2020 20:10:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14BC25C240;
	Thu, 25 Jun 2020 20:10:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6A42A1809547;
	Thu, 25 Jun 2020 20:10:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05PKA0V8010561 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Jun 2020 16:10:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 543EB20316D9; Thu, 25 Jun 2020 20:10:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2043120316D6
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 20:09:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD4C28007C8
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 20:09:57 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-34-gCHT2-bjPUeGL-hYsN2LoA-1; Thu, 25 Jun 2020 16:09:55 -0400
X-MC-Unique: gCHT2-bjPUeGL-hYsN2LoA-1
Received: by mail-qt1-f179.google.com with SMTP id v19so5716039qtq.10
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 13:09:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=4nFYjeKWfams0B8H8T36EOW2DlTFX6AXzcBtpDAEYPg=;
	b=hkHiEW8sf4Z+y8fZORelad4ldRyDXEZTYYuXS+o0OnrwXLSxUhomiz5dFvGudAYay9
	UeJsDK8D/Jbsn8rah1KnoGXAxl/GirwU9a+Gz/E8KnedhZFnAy0KtSDPJdwC6fLoa1rI
	rYLBgGOBazkeOrhv4ug/xcJmdAGYmKzBf7++zxwJVreAv1XqmXuUzXY1B6CMdFqfBBtQ
	DatskCskqJTN7wLDDWPy49Jc+nHHEJ02XWGndK1a7+Ekn5AvFuykbDDzgO6qACOUxdCF
	5z8OSkgw2QZUe8IdLBJqfvD8LCsCex4/Sz929GVaT79OJWL3k7IS4Fr4aEJOMxEiXrlC
	Xv/A==
X-Gm-Message-State: AOAM531KNQr7DRPS/jlGkRrv3b0aK15HZmlUjLAqfIneKf881iIbSH6i
	2rOACC4WOJh/O/N7FryD6XGsSaoleJthxb1Dtugd8A6d
X-Google-Smtp-Source: ABdhPJyQ91wd5xKRXt8HExaTQ+smS/ikWWl2i/CLES426GeQjcc16ijEfif/PoaQriwAdibbNefi2Ra9jxa3BUkp7/A=
X-Received: by 2002:ac8:5486:: with SMTP id h6mr13387480qtq.255.1593115795149; 
	Thu, 25 Jun 2020 13:09:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:12b:0:0:0:0 with HTTP; Thu, 25 Jun 2020 13:09:54
	-0700 (PDT)
In-Reply-To: <CADj8JxdZpDra8wxg9UcjDjsG3CtcG0A7EWTRt6Pg6C4LU0bLvw@mail.gmail.com>
References: <CADj8JxdZpDra8wxg9UcjDjsG3CtcG0A7EWTRt6Pg6C4LU0bLvw@mail.gmail.com>
Date: Thu, 25 Jun 2020 13:09:54 -0700
Message-ID: <CAM+Q2c5nGVkC39m4F6w6=RhnrAF=na98JZ6h0-MV8qxbJNnHVQ@mail.gmail.com>
Subject: Re: problems with apache2 /var/www/html
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Generally I like to see the webserver configured as www-data:www-data.
You can use a different user, but the user should nonetheless be a
member of the www-data group.

You'll also want to look to your php.ini file, specifically:
file_uploads
upload_max_filesize &
post_max_size

These last 2 should either be equal to each other or the post_max_size
should be larger than upload_max_filesize.

You'll also wish to check your directory permissions. 0644 is
generally sufficient.

Examination of the error logs can be very helpful in this regard, as
it's generally a good way to precisely pinpoint the error.

For identification purposes only & in case anyone cares, my name is
Jackie McBride, & I may be contacted at:
abletec at GMail dot com
Please do not copy/paste the email address, as it has been munged to
prevent spam harvesting.

HTH.

On 6/25/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> So my web server is running apache2 php and mariadb but I can't upload
> anything to the directory. www-data is the owner and it is a system
> account. /var/www/html is my root directory. Is there something I'm
> doing wrong?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>


-- 
Subscribe to a WordPress for Newbies Mailing List by sending a message to:
wp4newbs-request@freelists.org with 'subscribe' in the Subject field OR by
visiting the list page at http://www.freelists.org/list/wp4newbs
& check out my sites at www.brightstarsweb.com & www.mysitesbeenhacked.com

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

