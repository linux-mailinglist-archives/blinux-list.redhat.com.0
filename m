Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 74C3C116ABB
	for <lists+blinux-list@lfdr.de>; Mon,  9 Dec 2019 11:17:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1575886630;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GtlUYp8FmD1iywzSNCVauYGdPssaqysS9xKyuMaYh+Q=;
	b=VxgqmqcW3R9jpCiE0ZPHHuFbAenCwxrYtiTl0NiXAxSQ/oBfehLo4mANyKkFQQ3A+8jLq1
	GpQyAW5JzpNUIOjWVjAXNiCY9sGmD7kMLt5ryopDkkLVZw5XocqxKEbCuNoQZS9NELgjG0
	1p1S0no4H2T/7Yt9odLOP9yQVYWHn4o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-278-mjlkDS1_MpyI1o6P1t4ATg-1; Mon, 09 Dec 2019 05:17:06 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 792B58024CC;
	Mon,  9 Dec 2019 10:17:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 088766E3E9;
	Mon,  9 Dec 2019 10:16:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0B53E18034EA;
	Mon,  9 Dec 2019 10:16:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xB9AGeIl015853 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 9 Dec 2019 05:16:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1AAE22166B2B; Mon,  9 Dec 2019 10:16:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 166572166B29
	for <blinux-list@redhat.com>; Mon,  9 Dec 2019 10:16:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D1F4F8007C9
	for <blinux-list@redhat.com>; Mon,  9 Dec 2019 10:16:37 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-138-_jHOrD1rP_-nigLOO_2I1A-1; Mon, 09 Dec 2019 05:16:36 -0500
Received: by mail-wr1-f45.google.com with SMTP id z3so15543437wru.3
	for <blinux-list@redhat.com>; Mon, 09 Dec 2019 02:16:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding:thread-index:content-language;
	bh=/G9HGBgpmA6uSZXosVwp+hjVY8vyusB8n6lJUy4HUP4=;
	b=b9KRRIEkZ9wqlXY6xmdK/OyMkG6Ybr9s8dl1Q73v6VqJE9BA0g2H+g4jyLaMauKaGs
	9O+d52f+2BMyBamMrlQ7eA7p32q77g0tKq4Xf1TFp4ck5nWwZgDRZgruikvwliMfZjls
	2yhU8+x1F3m+EPUVsKD9zrdzsCCwLNhT90+0rjBJXJikV3GL9mg4CZcpL/bdmkCmOLPH
	VKDMy33/EzdIVSpEmQmVDgDR6RzvDOdHhxoEumii2AtVaLuST/LkfJmdsSiqn5nJQLA6
	flqfjjAN6/XUhjJ/SdsPm1fx4EAa2LLjF3ACXd1q7g00xVHYg59hoy6cw2uHsujfPFVO
	sJVA==
X-Gm-Message-State: APjAAAXmyj6TwEJM/EiGHueD61d2Xb8oGmNLJKIHuhTrxCc6xCvkJ37R
	vktsFGk+pQtC1DKFKnO3KVoIHuLTwqQ=
X-Google-Smtp-Source: APXvYqwV4whfy1HsLLi7BiGlNqtJ2uQUniGGZxUfZvJlnmMUTepMfwr2O2bUGCWtqSTgRiOJHnPVAg==
X-Received: by 2002:a5d:4acb:: with SMTP id y11mr1274046wrs.106.1575886594799; 
	Mon, 09 Dec 2019 02:16:34 -0800 (PST)
Received: from Satellite ([2a01:cb14:3e5:f000:9f5:df86:4c7f:1ef4])
	by smtp.gmail.com with ESMTPSA id
	z6sm28125254wrw.36.2019.12.09.02.16.34 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 09 Dec 2019 02:16:34 -0800 (PST)
To: <blinux-list@redhat.com>
Subject: Orca'sSpeech Rate
Date: Mon, 9 Dec 2019 11:16:33 +0100
Message-ID: <000101d5ae79$bb999ca0$32ccd5e0$@gmail.com>
MIME-Version: 1.0
Thread-Index: AdWueaxE2kf19DdIRYegbww4uVx0jQ==
Content-Language: en-gb
X-MC-Unique: _jHOrD1rP_-nigLOO_2I1A-1
X-MC-Unique: mjlkDS1_MpyI1o6P1t4ATg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xB9AGeIl015853
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Greetings everyone,

First I'd like to apologise if this is not the right place to ask for help. I'm relatively new, slowly getting started with both Linux and Orca. Now, here's the thing:

I've installed Ubuntu 19.10 in a virtual machine, and I'm having a problem when trying to adjust Orca's preferences, more precisely the speech rate. As soon as I press either Apply or OK, the speed goes back to the default, and the Preferences dialogue doesn't close. When I press escape, everything freezes for a few seconds. All the other changes seem to be saved, except the speed. Am I missing something here? Should I do things differently? I'll be grateful for any help. I've just tried a live session on a real computer this morning,and encountered exactly the same behaviour.

Many thanks in advance. Kind regards,

Vlad.



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

