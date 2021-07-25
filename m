Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A75A73D4E84
	for <lists+blinux-list@lfdr.de>; Sun, 25 Jul 2021 18:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627228857;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HUHhX1XeNZkUDJ5h+4T10Upc7Z4L2sQzo6E1GpG/5Qo=;
	b=ecrb94HfkMiIXBa2vfMDhw1UFdm+5O/Umr9WI50lzOftepoEuMVBZrxT7Uhvwjh72P/rP6
	a8b2jGDzwszD/w3O7+5ctetHHehV/lOkT9ogohWV0MlfCSRylSEnj+E98ehSs0CugKATy8
	6ndggQ7O9/OPH3ltf5L2aub3o7CLmis=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-312-sqbC72qgNMeLoQH-Q4wNmw-1; Sun, 25 Jul 2021 12:00:56 -0400
X-MC-Unique: sqbC72qgNMeLoQH-Q4wNmw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 001AA1800D41;
	Sun, 25 Jul 2021 16:00:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D054210016F8;
	Sun, 25 Jul 2021 16:00:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 941904BB7C;
	Sun, 25 Jul 2021 16:00:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16PG0U1d011346 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Jul 2021 12:00:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 37DFD2166B1B; Sun, 25 Jul 2021 16:00:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32DB52166B16
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 16:00:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B473858286
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 16:00:27 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
	[209.85.219.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-200-WVmyHUQ5Mji7DcVkpVSgRQ-1; Sun, 25 Jul 2021 12:00:24 -0400
X-MC-Unique: WVmyHUQ5Mji7DcVkpVSgRQ-1
Received: by mail-qv1-f49.google.com with SMTP id p38so3861125qvp.11
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 09:00:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dLNGdQ9qn5OCnD9akkeGHNHe58LVp3nba7syTyl+gaI=;
	b=nQfXvE2UAt4ng2I2uuoKtN08I3C2CkRJsZbxQIU/VDstWUv/dGpOjsJnzt5FQ1U2rN
	22n3bYivisziLf51OGTu5nxlOZjf6lYFq4PE0mjO5UW1yoSANOJ3ZSUPXpoZsd4rFjxC
	VhYEbgX2wN9mUqo1f6lRISpouHrOoMTYirRSmDf2/IpTFdRH9Dty9ItXtljZSpWhqcCe
	tjZS5sBWQ7ZlrdL4u2VPM1xJSErnZOY5ogo4Inc08B/iqR9RcYotqT2mVUN+3J09a8VH
	uEU1WESnEkRDX5i9O+H7sUrIioRHu99Po7G4lxHSz4kao1oAnDDxQcSq0/vQRqjgIJI4
	Ay2Q==
X-Gm-Message-State: AOAM531nNR5LDK7xqGfZYBxV6aLZLWuCI0oWTVkaCYTMNvxLS32clnzS
	/ghbnQrYJJu7ktZisODvr00d6CdtE3iSgnuUjc4R+We0MbY=
X-Google-Smtp-Source: ABdhPJzdjwQ7JsJ3E9XJ7CNTLgqtagYy/uolvcPgfpauJjvi6WfP7BYQ+x5XNOcXuoVreHtgxzshheAF+XyUDIrw64k=
X-Received: by 2002:a05:6214:e83:: with SMTP id
	hf3mr14172520qvb.19.1627228823509; 
	Sun, 25 Jul 2021 09:00:23 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 25 Jul 2021 16:59:57 +0100
Message-ID: <CAD_4ddTD8GOVSGL676KxR=MuJv-pHz9et=EzHTLiQhngDhSL4Q@mail.gmail.com>
Subject: A question about adding keyboard shortcuts in mate
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,

For reasons like emacspeak not liking pipewire,  and lios not liking gtk4,
I decided to do a clean install of arch with Mate with pulseaudio  and now
everything works as expected.
I am having a problem though: I installed ocrdesktop, but I can't seem to
figure out how to bind a key binding to the command ocrdesktop.
When I go into the control center, select keyboard shortcuts and click on
add, it gives me the name field, where I type ocr current window, and the
command field, where I type ocrdesktop.
When I select browse applications though, and even when I click on show all
applications, ocrdesktop doesn't show up.
Any idea how to fix this?
Best regards.
Francisco.
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

