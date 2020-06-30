Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 56ADE20FA7B
	for <lists+blinux-list@lfdr.de>; Tue, 30 Jun 2020 19:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593537872;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sJe7y7xRONoHK0FlsP+Gc6q29j8y2hF8+YiYaACmtgk=;
	b=WbF+EavqXYgqN/uY46PubjRxKK0NZ60otOfVbC0x1qMpVQogO+2NlH5V7V3gb3hJT0s70U
	PuTMfQ6cCMzM3UxlKbZBPzj6O3DLpY5rlNz/9ASMoyOonuSs41Js10e4OBxWBED6KZFowI
	7gf4JRWpc7rTAv0KblDCtMyYWv4uL8Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-_oYlzsXUNoiAZT77l9TutQ-1; Tue, 30 Jun 2020 13:24:30 -0400
X-MC-Unique: _oYlzsXUNoiAZT77l9TutQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1DD49107ACF4;
	Tue, 30 Jun 2020 17:24:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5EF065DC1E;
	Tue, 30 Jun 2020 17:24:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C61F91809547;
	Tue, 30 Jun 2020 17:24:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05UHO5hu021191 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Jun 2020 13:24:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9CAD4200BCE6; Tue, 30 Jun 2020 17:24:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 94EAE202B170
	for <blinux-list@redhat.com>; Tue, 30 Jun 2020 17:24:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AD2978007CB
	for <blinux-list@redhat.com>; Tue, 30 Jun 2020 17:24:02 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-410-wYorUujhOwi9UTu3rLMIxA-1; Tue, 30 Jun 2020 13:23:59 -0400
X-MC-Unique: wYorUujhOwi9UTu3rLMIxA-1
Received: by mail-wm1-f52.google.com with SMTP id 17so20358014wmo.1
	for <blinux-list@redhat.com>; Tue, 30 Jun 2020 10:23:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nd/D3oXZedljl6D4VK7CYao/cMBtNJQA3/aKBcOSlMU=;
	b=eB6yjgL50NCSOnyGTqf1xl47Z0z/3V95AwtRifhr/7p3vdKJxL5wZuU65dqznkFg/K
	nARipphagbdXqkCtXRL3n+lIxsO1oMYHELscSAe1JABWkf9soQ8XR3eqsr6Fv744Bbfn
	SmJ92aCHEsxDyoxEhoYuv0XrggVCs9Vbhsn8zKfpsai/kRFe1cKsblqUCZ+gzKhfjl4x
	LEuqPb4Xzb2YYtXhy5Mnj9tYktfaWSHmHwI6dJhXl07q2nGeuGql5rCXSAZNksvnNTti
	8K0pEHWz3KzctvUN3O3gy9kRg9H8fgVRMYTvLUrMiW7leJfJC1WTCLf7nDzcNaRGBtR4
	MTWw==
X-Gm-Message-State: AOAM530ZXLVgcBgaA13sPRuGITtjgG0kx+F8rKvf9rZAuw0ASFfeNjxy
	zFpoXNIpR7W+tfEYQG8EWEPf3aymHsSOyhFkD7sJtsPP
X-Google-Smtp-Source: ABdhPJz8LJhdmXWIbuIzfa+Xkiw0diF2azV1Y1F5e94XTBm/fwbCk5iNZRG7zEHKIH7VsJ15nTUnZ8ht9HjKNqSqeqk=
X-Received: by 2002:a7b:ce14:: with SMTP id m20mr24187001wmc.129.1593537838507;
	Tue, 30 Jun 2020 10:23:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:4688:0:0:0:0:0 with HTTP; Tue, 30 Jun 2020 10:23:57
	-0700 (PDT)
Date: Tue, 30 Jun 2020 13:23:57 -0400
Message-ID: <CADj8JxfchRF-=uX6bDxNyO+DE9fxUOygrV4E4GdLzEHoZYOPVg@mail.gmail.com>
Subject: using orca wile using jack
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

is it possible to use jack wile using orca? How should I configure it?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

