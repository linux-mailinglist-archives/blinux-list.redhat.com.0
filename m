Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 43A3B20A626
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jun 2020 21:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593114752;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iO0SNKiAyu6PFASs0kQHmhI4Kk/HtXjG4loLHkrvWbE=;
	b=cfItHx6tPR1w0IFUuLvUQUgoLTwbo3KAfhA2QzsE4JM2lapFVxdF2Ms/+A6PscHYkXSwUc
	fZHe/SmwJ2E6bjtZb+X/etyMPIzIlSJ7BAVeE+n2oPduS4pm8JI7YSBJjemujcbrd7m43o
	gYaDlfLruunUI0XOOQbvdTItVdX5hFc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-HMjTIJcTOkysdJliaZPcaA-1; Thu, 25 Jun 2020 15:52:30 -0400
X-MC-Unique: HMjTIJcTOkysdJliaZPcaA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 245A1107B783;
	Thu, 25 Jun 2020 19:52:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D17C5C662;
	Thu, 25 Jun 2020 19:52:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A70C180954D;
	Thu, 25 Jun 2020 19:52:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05PJqF2b008545 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Jun 2020 15:52:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 492FE201F448; Thu, 25 Jun 2020 19:52:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4542E200C0FE
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 19:52:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DFEBE8007C9
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 19:52:11 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-147-YYcrwG28Pe6b51GVIgX3ow-1; Thu, 25 Jun 2020 15:52:09 -0400
X-MC-Unique: YYcrwG28Pe6b51GVIgX3ow-1
Received: by mail-wr1-f46.google.com with SMTP id a6so7134072wrm.4
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 12:52:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GSOhhThsFBtFsWldp5ko1sVbYWRZVi6dX87gRXoTRts=;
	b=S4r5D7rTn3eKozWAxeRXut6rAjpQGeOCX22DOQhop4FxhGj4ETzgMZqhiGOkpq3ghs
	uMF/dAHjt0jmyXMcCkbD4nhxDQcQPlKWfDi2PdPUbvqFtiC8wKHz5gVa47yLQCfevJmj
	95NOUlUmrUomUSPloTSjQCqUN161n8MJMJ0KVjc7sloiCOdvCYFo/IN8IGPN1QRpWjNu
	9OS7NugEQFlj126qpYrxlPpvMN6lL+hh2vaSL0gv+BzblzniM7aR2lvfbwByv2+EoomX
	DgOdvXvj9A8cpd1gmS0qAhSpsd3wgRjyxGT3a93AlojDY6hoLC8eA2Fp11PDwHyqIqZJ
	HsSg==
X-Gm-Message-State: AOAM532wfRkonF64FhT+Choiy+Dtz+7N+HASM3u9Y488NoZTYEDX06x6
	zMtNO11rQZKnBecqCiuqjFh7ZUA0pVdYABgnnp7O0ubY
X-Google-Smtp-Source: ABdhPJzl7yy3PsQ7BijjomGqCDM11aa03OQeB/NyTvqa96TnM6W1fqP89DuOZqfZO84xqR+avvolrX5J6wg9EYFgpL0=
X-Received: by 2002:a5d:6452:: with SMTP id d18mr29583891wrw.284.1593114728103;
	Thu, 25 Jun 2020 12:52:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:4688:0:0:0:0:0 with HTTP; Thu, 25 Jun 2020 12:52:07
	-0700 (PDT)
Date: Thu, 25 Jun 2020 15:52:07 -0400
Message-ID: <CADj8JxdZpDra8wxg9UcjDjsG3CtcG0A7EWTRt6Pg6C4LU0bLvw@mail.gmail.com>
Subject: problems with apache2 /var/www/html
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

So my web server is running apache2 php and mariadb but I can't upload
anything to the directory. www-data is the owner and it is a system
account. /var/www/html is my root directory. Is there something I'm
doing wrong?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

