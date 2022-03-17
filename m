Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 394F34DD0D8
	for <lists+blinux-list@lfdr.de>; Thu, 17 Mar 2022 23:39:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647556776;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cJVP6BpwpXIKlWg+rBLasSuRBY3hXcxsTYgkL6EhHSg=;
	b=QFV/3e+RM64djPlyrodZRnl7InlfLS0/svDrXwNfNPqMVMFmYBYGg4dSdQ6xtrf7kVI2bb
	W6HUGx5rIxwCd7OhGiHuW6NELu3h/VjVHL0MD9tDa1uaixkU53ciTCJ/4JxnVI5rA/8NXs
	Hv0ticbBAoxtWz9aduDc5bs5OCfHnyo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-453-g96a5-ImOoycQW4pxQ6Oww-1; Thu, 17 Mar 2022 18:39:33 -0400
X-MC-Unique: g96a5-ImOoycQW4pxQ6Oww-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5E57185A7A4;
	Thu, 17 Mar 2022 22:39:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1979E30BB9;
	Thu, 17 Mar 2022 22:39:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8CFAF192F6C5;
	Thu, 17 Mar 2022 22:39:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.2790.1647555545.111203.blinux-list@redhat.com>
References: <mailman.2712.1647554312.111205.blinux-list@redhat.com>
 <mailman.2790.1647555545.111203.blinux-list@redhat.com>
Date: Thu, 17 Mar 2022 22:39:25 +0000
Subject: Re: MP3 Tag editor?
To: blinux-list@redhat.com
Message-ID: <mailman.2906.1647556769.111202.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It's been a long time since I've messed with mp3, but searching for
"tag" under sound in Aptitude, lltag sounds familiar and is
command-line driven.

There's also easytag if you want a graphical editor, but I can't speak
for how well it works with Orca.

On a somewhat related note, anyone know of a utility that can take a
flac file, perform a CDDB lookup on it, and retag/rename the file if
there's a hit? Mainly want to do this for Rips of CDs that failed the
lookup when I ripped them... would be useful if it consults databases
other than the ones abcde consults(even if an album hasn't been added
to one database, it might be in a adifferent  database). If it can
search a directory tree for flac files with placeholder type tags and
filenames, that would be a nice bonus, though I can always use

find . -iname "*track*"

to track down the untagged files since they're generally named Track
XX.flac where XX is the track number.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

