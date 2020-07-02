Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id DCDA62123D5
	for <lists+blinux-list@lfdr.de>; Thu,  2 Jul 2020 14:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593694700;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fYH/LWBv+OkjrGRyD12JcWI5eTY3vJ9PoRYdcOWfzmk=;
	b=J7ijlz/zJAAp69hrvmuQchYWgpJVxzlnYpa2AUvUi4DJo09SXEpo+3KLBgXugvYmd09FaB
	A9X/K80enP8UUJVEYuB0ci7WY8vw99nJd4gFkU8VkhgFXAMuy8hfmjLimCKJOzowbqriYG
	Oa2C+/6JhhwLicPyGZQZ8iEpyqVxxtY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-453-0LQfS5IIMZ6kgS1OVDS-vA-1; Thu, 02 Jul 2020 08:58:19 -0400
X-MC-Unique: 0LQfS5IIMZ6kgS1OVDS-vA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5A88080183C;
	Thu,  2 Jul 2020 12:58:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89CD973FD3;
	Thu,  2 Jul 2020 12:58:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC8236C9C7;
	Thu,  2 Jul 2020 12:58:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 062CuIVQ025879 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Jul 2020 08:56:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1B233F41A6; Thu,  2 Jul 2020 12:56:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 160FFF4D57
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 12:56:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 83BCE858EE9
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 12:56:12 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-331-oKZ9k7IgP7eINJdBtUfKiQ-1; Thu, 02 Jul 2020 08:56:10 -0400
X-MC-Unique: oKZ9k7IgP7eINJdBtUfKiQ-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 062Cu9p1235568
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Thu, 2 Jul 2020 12:56:09 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 062Cu9p1235568
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 062Cu9p1235568
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 062Cu94W235567
	for blinux-list@redhat.com; Thu, 2 Jul 2020 08:56:09 -0400
Date: Thu, 2 Jul 2020 08:56:09 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: using orca wile using jack
Message-ID: <20200702125609.GB2669@rednote.net>
References: <CADj8JxfchRF-=uX6bDxNyO+DE9fxUOygrV4E4GdLzEHoZYOPVg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADj8JxfchRF-=uX6bDxNyO+DE9fxUOygrV4E4GdLzEHoZYOPVg@mail.gmail.com>
X-Operating-System: Linux opera.rednote.net 5.6.19-200.fc31.x86_64
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

I can tell you that I've done so, but not on the same audio device, of
course.

I did not use the graphical jack tools but the cli.

Best,

Janina

Linux for blind general discussion writes:
> is it possible to use jack wile using orca? How should I configure it?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

