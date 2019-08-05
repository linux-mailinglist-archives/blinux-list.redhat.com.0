Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FD4825C1
	for <lists+blinux-list@lfdr.de>; Mon,  5 Aug 2019 21:55:25 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D9628301302C;
	Mon,  5 Aug 2019 19:55:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 762855DE5B;
	Mon,  5 Aug 2019 19:55:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4536B1800204;
	Mon,  5 Aug 2019 19:55:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
	[10.5.11.15])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x75Jph2j029771 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Aug 2019 15:51:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 812795D712; Mon,  5 Aug 2019 19:51:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx14.extmail.prod.ext.phx2.redhat.com
	[10.5.110.43])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B7C15D704
	for <blinux-list@redhat.com>; Mon,  5 Aug 2019 19:51:40 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
	[209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 9E5933002E2D
	for <blinux-list@redhat.com>; Mon,  5 Aug 2019 19:51:39 +0000 (UTC)
Received: by mail-pg1-f170.google.com with SMTP id w3so3054919pgt.13
	for <blinux-list@redhat.com>; Mon, 05 Aug 2019 12:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding;
	bh=xxCpZA0mU5Ei5FyuhCbeNI2bVKcVGzBv/AZozb7nIe0=;
	b=PIYxocdNuO/3j/pl6zIDb47DRjxfupZWHXIw6s9VwBcAhdB2OlNLluotkb0d6rdE1f
	wUmsR+cUxbny/QZLoee5sNbMoegemYhfkJGeSZ43d3QSSvHiatwJyaXMV+3TtcPuKlji
	o9+3AxW8ZCmkx+CIABQlVOkjKVtSd2J3G5PEb0gvMWm+XK8g6l77fBoNVyhI6Z5fu+I4
	C9FhhXL9URV5LaDLirnMndcWuIsUZHVW8fMVmKG2EDpHhJVKGyDq2AGE7pV7rCF6iqSn
	1VPw9u+br+47ui4c3P/SncfcRncOUWsMXnefhmEeX8A9KEFNjvM8+TRjDw4jDNCwkCot
	TLAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding;
	bh=xxCpZA0mU5Ei5FyuhCbeNI2bVKcVGzBv/AZozb7nIe0=;
	b=OnufKFQFYT8f9jaOSE0SmrTr7HWF3h2XHowWcVJ2Er6RpfRGZ96zb2mpEbebJJg13W
	5zkjiniO3pvGn6ZcK4gvMNTm7O93IahT5st+fLVj2ykOuUKomTcnq6Re/OyGz5MktlqT
	+zBQly+hUWAjMOwCc7p4LoumXHzgIUU0bB5RB4M1Kr7qBLddOHQMLFva74JR/6f2IlB9
	UZnAb4fG/UHFXjsSb1H4VIjq/Wq1k/fn1BbBpTwYq2S6cmkMfTkWyvmXqbBf/g2nCxJu
	GiXMJJcWAVhUPb5asIeyFHRm72pCbyCYEZrzZXHuh1FBuMnI60PSgz8TQc4BDxDTZAf3
	aofg==
X-Gm-Message-State: APjAAAW3mKJ6UODGmPn9c4Cw+tLJeqcnD2UvAUDTQUssjyRbyhgn0UmT
	wGrkdd+el6WPioSvIvswhUOoIuw3
X-Google-Smtp-Source: APXvYqxdVJq/sFGKFoBDNtVI/BFgJQvTR1h2N9jplizgCw8uY2TiZjmQwESYDJrwyUxmA7sR1b96gQ==
X-Received: by 2002:a63:48c:: with SMTP id 134mr15095755pge.386.1565034698661; 
	Mon, 05 Aug 2019 12:51:38 -0700 (PDT)
Received: from [0.0.0.0] ([67.230.224.68]) by smtp.gmail.com with ESMTPSA id
	m20sm97085376pff.79.2019.08.05.12.51.36 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Aug 2019 12:51:37 -0700 (PDT)
Message-ID: <20190805.195033.561.2@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: No F Key Boot Menu
Date: Mon, 05 Aug 2019 14:50:33 -0500
MIME-Version: 1.0
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.43]);
	Mon, 05 Aug 2019 19:51:39 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]);
	Mon, 05 Aug 2019 19:51:39 +0000 (UTC) for IP:'209.85.215.170'
	DOMAIN:'mail-pg1-f170.google.com'
	HELO:'mail-pg1-f170.google.com' FROM:'captinlogic@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.215.170 mail-pg1-f170.google.com 209.85.215.170
	mail-pg1-f170.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.43
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x75Jph2j029771
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Mon, 05 Aug 2019 19:55:24 +0000 (UTC)

My bios:
Board: EVGA INTERNATIONAL CO.,LTD 131-HE-E995 1.0
UEFI: American Megatrends Inc. 2.08 06/28/2019
does not seem to have a function whereby you can select a device to boot from using one of the function keys. Instead, one must physically go into the bios and change boot order, if, for example, you wish to boot from a flash drive to install an OS. And if that flash drive is subsequently removed, the system will not boot, until you go into the bios and change the boot order, again.
My question: is this normal bios behavior these days, or is something wrong in my particular implementation. I turned off the secure boot function in there. Would turning that on fix this? What else might I look for in the bios to either (a) allow for falling back on different devices should one be removed or (b) to allow the function key boot menu found in previous bios implementations.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
