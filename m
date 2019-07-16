Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AE06AF9F
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2019 21:14:41 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id CD273307D844;
	Tue, 16 Jul 2019 19:14:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FC4E60C44;
	Tue, 16 Jul 2019 19:14:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 333C01800207;
	Tue, 16 Jul 2019 19:14:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x6GJEQPF000770 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Jul 2019 15:14:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9C2AE60C78; Tue, 16 Jul 2019 19:14:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx10.extmail.prod.ext.phx2.redhat.com
	[10.5.110.39])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 963A260C73
	for <blinux-list@redhat.com>; Tue, 16 Jul 2019 19:14:24 +0000 (UTC)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 52A315D674
	for <blinux-list@redhat.com>; Tue, 16 Jul 2019 19:14:23 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id j5so37569015ioj.8
	for <blinux-list@redhat.com>; Tue, 16 Jul 2019 12:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:to; bh=pAENN9r7PhBEI0xRiyFJYpaFSPVnZTl8ySIlb1KMr1Y=;
	b=jXqPWE4rXzq21wHaXR9hIs8ixQwy6w7akN50Ap3i1aUxA+L3rjvbXwaN5FPYP5+PR3
	MwrpVGNr2zv0rf1RVEq7hi01wfSkQoNe/gTJ56g2INR4OYexvPk056FeHcH/fqVqXB5k
	7wcICD8LwAVnAVqfNSqvMtQV+NPV2dkPEqXcIRLlPQg3nxdkvtB1eBT7feE5cfXSDTaW
	9HijHV7u3tdai4uAGZLW4PB5D/6lvHiktiQeED8zBWS2R9fS+WK7GfQZrypckWYHZl0G
	GWWRUqEYarrjvytU+Q7cw6v0nMvlfm1r68HnN0S5gEnA1ADTl1/pX6PdIrNZPLA5LSmp
	QlZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=pAENN9r7PhBEI0xRiyFJYpaFSPVnZTl8ySIlb1KMr1Y=;
	b=h0D2rKilcjR/jkAlK/ei+4p+GOtyr+zoBnvfHDp0c0E0txwisGo49fk57UX2NNiIfn
	7lEcpNx+hqD3EDIyA90gImUeZGs20hYniOMWK5evNErjZgV4DDFPNi59E2DeV+deophT
	nm4DT+9rKeWFP2jbVWHEIaHdNgjZQxkQCcF2qaC5QM0sAJCcLAi4WtAhyomlUJNcZP+H
	lVK8oNgbw7wtBbeTG0Xs8e4ETqIYBqZ+kOqpEEqi+vO/EWZiHTY2Lb2M7SKPoK1Rxytp
	jl6U5YFGoB33PVN2Y54QgLqcgMYJux8vhcuFHOjQs2SWTaUBeeFeffvbaeredj9NqB4U
	30kQ==
X-Gm-Message-State: APjAAAXaG8M5+9XpxRd8y+Gnh6mqSZcTG06mF2UPMNM4KXVPLL69hBK4
	xD9EsUfcXlo1ErSCwzbRjq4DMyn5
X-Google-Smtp-Source: APXvYqyhwdZxSG+IQxeaWHsnR/HteJmiWDBZqD6neQbRolTQ8kZ3piNgr7LGG44d0CQqK0zJtKt/qg==
X-Received: by 2002:a5d:9e11:: with SMTP id h17mr32803110ioh.261.1563304462524;
	Tue, 16 Jul 2019 12:14:22 -0700 (PDT)
Received: from [192.168.0.2] ([65.34.110.88]) by smtp.gmail.com with ESMTPSA id
	c17sm17250226ioo.82.2019.07.16.12.14.21 for <blinux-list@redhat.com>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 16 Jul 2019 12:14:21 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: mumble command-line client
Message-Id: <56E3E288-7D64-44A7-ADD3-078D1C9588D2@gmail.com>
Date: Tue, 16 Jul 2019 14:14:17 -0500
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.39]);
	Tue, 16 Jul 2019 19:14:23 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]);
	Tue, 16 Jul 2019 19:14:23 +0000 (UTC) for IP:'209.85.166.51'
	DOMAIN:'mail-io1-f51.google.com' HELO:'mail-io1-f51.google.com'
	FROM:'montanalag@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.166.51 mail-io1-f51.google.com 209.85.166.51
	mail-io1-f51.google.com <montanalag@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.39
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]); Tue, 16 Jul 2019 19:14:40 +0000 (UTC)

Do you think barnard might run in ubuntu?

--Brian Tew

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
