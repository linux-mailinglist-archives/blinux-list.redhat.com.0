Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF033A3F2
	for <lists+blinux-list@lfdr.de>; Sun,  9 Jun 2019 07:27:34 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 0E6533DE0E;
	Sun,  9 Jun 2019 05:27:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B49EB19CA0;
	Sun,  9 Jun 2019 05:27:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A97B1806B18;
	Sun,  9 Jun 2019 05:27:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x595R4bg029999 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 9 Jun 2019 01:27:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 727A118037; Sun,  9 Jun 2019 05:27:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx11.extmail.prod.ext.phx2.redhat.com
	[10.5.110.40])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CD6F5C21E
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 05:27:02 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
	[209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D6DC13084288
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 05:27:00 +0000 (UTC)
Received: by mail-pg1-f176.google.com with SMTP id 196so3271243pgc.6
	for <blinux-list@redhat.com>; Sat, 08 Jun 2019 22:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding;
	bh=vQ4GOzcWZweJnS7O7MeNyeCEHNlrwK+UzbIRpbBD1Sk=;
	b=WSMcPTHnEnyjCkH4fkWTvLYji2wYxFgpmUlzYTs+KKcfeHKxN2X9Q6KZIxgQW4ijLm
	TcCtiVnCtabnEj82diy1ZvFUOS1JzGwoqheVW1oae9XnJTiecOESVuno8C6z5FbSeQjl
	wCtEGl7vvZR+4lXigopBx5Zj+FnccbmScum3LZpynujLlHpDXQ/NgHuoByCZaxeLp+7r
	awRn0rIrtSc6pPevgXrCMbeaQX2Tw7rjAu4CNBqCoQWxXUSiG63i/RyUITalICeFy6tH
	NP4e4+Z2TcW8OsR+3LfW2MLQ9IWj1XHzm6IxEElfLsIAHwcQ5ptw43jj5Z5mfN3eKpNq
	KHOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding;
	bh=vQ4GOzcWZweJnS7O7MeNyeCEHNlrwK+UzbIRpbBD1Sk=;
	b=UcBohzrqSCzfUC1k0juxMZ/noPodY+PX5pXaZs7KdVkray73XFllVdv5ZzkGJQrYXe
	N4pU2RzIPJ8/wM8D8DTHtBOFdmTvkDEqStLSUQFOdJLUg4gKBupjZ6CbuPU3lx6PaZ6x
	STxS0ZtlmIc1GVQcltk6dyPog5ZotcBYru0PDCBAhC3SR0oKISyMZg9GP+Wm6S4dpZCM
	DzZiSOe/09da1SaDc0k18TxtlRgPUuUNSpQtk0oayCO5h8fCnCSq0AyH/DsKQ6kd7T+G
	qTw2fIYEqqJ7I7UySxASBri2y8JQnuRNN2A5lMRsHwgZfARVXgJwgAZGKqGT3bMTlk9c
	3bvA==
X-Gm-Message-State: APjAAAUCL2Y3ORANhndLTZW6ioAc77S+rZFxSuXO0RCoSREYKKEIWNgR
	Be+GLVSZw4HDWAkOm6ixK1HmoIIC
X-Google-Smtp-Source: APXvYqw4U6F08Erw03NvtOJbzgKKJYC1+p2LAgeuH8MnmUCEtAx9IrPZNJ7zSe0702UqpXzp4ePgFQ==
X-Received: by 2002:a17:90b:d8b:: with SMTP id
	bg11mr14552381pjb.30.1560058019905; 
	Sat, 08 Jun 2019 22:26:59 -0700 (PDT)
Received: from [192.168.1.181] ([67.230.224.68])
	by smtp.gmail.com with ESMTPSA id
	d12sm7206868pfd.96.2019.06.08.22.26.58 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 08 Jun 2019 22:26:59 -0700 (PDT)
Message-ID: <20190609.052602.869.15@[192.168.1.181]>
To: blinux-list@redhat.com
Subject: Audio Recording
Date: Sun, 09 Jun 2019 00:26:02 -0500
MIME-Version: 1.0
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.40]);
	Sun, 09 Jun 2019 05:27:00 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]);
	Sun, 09 Jun 2019 05:27:00 +0000 (UTC) for IP:'209.85.215.176'
	DOMAIN:'mail-pg1-f176.google.com'
	HELO:'mail-pg1-f176.google.com' FROM:'captinlogic@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.109  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.215.176 mail-pg1-f176.google.com 209.85.215.176
	mail-pg1-f176.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.40
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x595R4bg029999
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Sun, 09 Jun 2019 05:27:33 +0000 (UTC)

What are we using for audio recording on linux these days. In the gui. Is audacity still the best one from an a11y standpoint? How about CLI?
I'm interested in recording from line-in so I can archive some of my tapes.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
