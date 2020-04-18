Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 73DB71AEC77
	for <lists+blinux-list@lfdr.de>; Sat, 18 Apr 2020 14:38:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587213502;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IjGBsJ4VnKdn8LYQO0lowtyRtLlgiSgk3SGxG+Ttsjs=;
	b=coQG25Eq5XGcOadKK+he7XXL7448K8UgHdW8M12EsUNwu/ANZbiRA2v9yIdMBX7qsnpOev
	dIJhSH2hokdqedEjtdJfI8Nv6gzSEYSbX7OzKzN2rYIE4wH9a2oXZ52e3yBQ09iTdF5lbk
	GIxA/XQXWJ0G2FDWveugaFfPpfXns2Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-78-ZhO0zYhvPz69f6JQuJeREw-1; Sat, 18 Apr 2020 08:38:20 -0400
X-MC-Unique: ZhO0zYhvPz69f6JQuJeREw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E4538017F3;
	Sat, 18 Apr 2020 12:38:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D67EE5D9CA;
	Sat, 18 Apr 2020 12:38:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2ACA518363CF;
	Sat, 18 Apr 2020 12:37:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03ICblMQ026109 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Apr 2020 08:37:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0E1451005E46; Sat, 18 Apr 2020 12:37:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 09E4E1006B08
	for <blinux-list@redhat.com>; Sat, 18 Apr 2020 12:37:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32AB2800296
	for <blinux-list@redhat.com>; Sat, 18 Apr 2020 12:37:44 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-332-_Axn2zLvO82a2BgwFsjEWg-1; Sat, 18 Apr 2020 08:37:38 -0400
X-MC-Unique: _Axn2zLvO82a2BgwFsjEWg-1
Received: by mail-qt1-f172.google.com with SMTP id z90so4389352qtd.10
	for <blinux-list@redhat.com>; Sat, 18 Apr 2020 05:37:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:cc:to;
	bh=4/AiEIeEyf2Tt5OQYdCShaHhiv/Y6/MOuWJaQqIRFPo=;
	b=pJjgmj3QJ6vx/J7oUisC7pb03DNjmk9p0Njmse0ulYBRSyOozybSZHz8bRJZYNnelm
	Kup5ZL6AI5pKGhkDlSR/D5ydJq/EhBQdYb0b4YpPsbRGAvnWryFPIRdU4pkAbU5hNSGH
	0DB79w/qsHPoqFQ0eYiOO/ujbPOSsISV+/9AB6DeJBevyTXTfJ00MfNYiE1jYIIHfA/H
	ESaFhMlm/WfE6b4IdT258jmO/qvch4sjIc0H1fAXxFkXE+kkIJcENsDOqCqSmJDhVB6w
	5mqxjJSObn6+osefCnGjMB9cxgRQ7uvWz0qMb7mbRR0iQHlQGLNCZwmKeu2Ntr7j0Id/
	mAOg==
X-Gm-Message-State: AGi0PubzkTJDCzobFK/dUav8bUHfjOe50nkjLz5Nu/unTJVn8wHLyOdi
	GnUxLhcnZO7msbQDeHR7Qg/5TYbg
X-Google-Smtp-Source: APiQypLU35RANSdszllJCds6qg4Y1YbBIS0un4CERSSfNZkPLlgYH6vmXM+F0xSaYwqp2H1/yMu5jA==
X-Received: by 2002:ac8:4b5b:: with SMTP id e27mr7554705qts.46.1587213457375; 
	Sat, 18 Apr 2020 05:37:37 -0700 (PDT)
Received: from [192.168.0.3] ([65.34.110.88]) by smtp.gmail.com with ESMTPSA id
	z90sm20441371qtd.75.2020.04.18.05.37.36
	(version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
	Sat, 18 Apr 2020 05:37:36 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Can you give me some ideas for debugging these problems?
Message-Id: <F6FF49B1-F0C3-4F3A-A082-84D6A5963FFF@gmail.com>
Date: Sat, 18 Apr 2020 07:37:33 -0500
To: John Boyer <john.boyer@abilitiessoft.org>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
Cc: blinux-list@redhat.com
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello John,
I think I may know your problem. I have the same display,
and I was having usb problems. It almost drove me sane.
Finally I replaced the usb cable with a cheap cable from Walmart,
and that fixed it. Now I am thinking those cables
vispero supplies may be defective, but mine worked fine for a while.
try replacing that cable. Good luck.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

