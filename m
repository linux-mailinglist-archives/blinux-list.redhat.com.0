Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id A316A9BD5E
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 13:54:14 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id CB3B18AB25C;
	Sat, 24 Aug 2019 11:54:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C25860F86;
	Sat, 24 Aug 2019 11:54:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F33712551C;
	Sat, 24 Aug 2019 11:54:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7OBs7Hi003460 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 07:54:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A2794608C2; Sat, 24 Aug 2019 11:54:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx22.extmail.prod.ext.phx2.redhat.com
	[10.5.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9848760605
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 11:54:02 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 52AD0189DAE1
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 11:54:01 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id i63so11484856wmg.4
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 04:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=8iJ8cCNI5yO7iGH3SVLjTHnBS3R/Ep4Bs/A3cDlxD8E=;
	b=GizCjUAUlnudh/nYQbvdVHY8BnpRk27Yd+Cm6+n87FwC/SsTk3I/1ASB4YNIjq+ZuA
	72jMtEoTwhnC2qrXyMliiYYVQlIWdCK5bgGqg1Qcbm9x2YT6Bx9EKxOpHgWNvE+12A+K
	TaOAdyTjRTRu44Pk9TI/EghkUts/L8uIwo3C43UWb2ODhaxsmm+lhtQOzKXYGzAJIq1K
	DIUmnOaXXuh9N1q4KTy4ecAxvIZWZ5zm/lCQphDokp9NTTQYRIoO1kVR4X2TY2j0hEb6
	F2gxpHCIfE0tWuWrLAw5a0BwDHbsr/KdgjGg9ubiwR1FhiF6gcDyTpwc0TzNpZqYLx3j
	IwNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=8iJ8cCNI5yO7iGH3SVLjTHnBS3R/Ep4Bs/A3cDlxD8E=;
	b=dKGbdB3NBBzXgoHiwPtCBU90Ga2V22yOFx/AEpnS4ktjl4bU0pdKbXsD4MjJQ3A2SR
	DJIGTqtmYwkfkEIiG1erFUZLjTzOlbNVpWoLMTesB6+1rlFe8fjQM0QREw5G8shOeh+g
	dNoLZawOKLA8dVGC3og42xzJm85kSTfh+ap2jyEupjvBHC40nQY6Ajyo1NQmuK+4kgjw
	ANMU7NQ5DGnekZITVc6A9cOunNMiKv6GNKTZA4onYQqRf6b/Pa4cMRPnnV90VNbXdf5i
	1xNKNRVRSm7ngh4miPCWjlAimBwFMfmP5tUPKKW4gtNtPC7thKFnHduXDqnWP6YXkD19
	hs9w==
X-Gm-Message-State: APjAAAW1KsrcM/eo8+IKuweBQ5e9KbLhSM4fZEOjkY2GwdfsqF9xB/PI
	LD7/g2MT0/OdpWFoU5oHelYV0MRg
X-Google-Smtp-Source: APXvYqyCpgCifmL7WQjZPRAJ5wqJCj56VTtZAxG+rs7xhgZvv7tg8p6rSO7SxqfV2ySWEO25eOsONQ==
X-Received: by 2002:a05:600c:21ca:: with SMTP id
	x10mr10802766wmj.112.1566647639866; 
	Sat, 24 Aug 2019 04:53:59 -0700 (PDT)
Received: from ?IPv6:2a04:b2c2:807:200:5c4c:f7fa:5d83:63aa?
	([2a04:b2c2:807:200:5c4c:f7fa:5d83:63aa])
	by smtp.gmail.com with ESMTPSA id q3sm8014671wma.48.2019.08.24.04.53.59
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Aug 2019 04:53:59 -0700 (PDT)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: KVM questions
Message-ID: <38bbc7e3-6658-9fba-5466-c90bf4a396ff@GMAIL.COM>
Date: Sat, 24 Aug 2019 12:53:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.63]);
	Sat, 24 Aug 2019 11:54:01 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.63]);
	Sat, 24 Aug 2019 11:54:01 +0000 (UTC) for IP:'209.85.128.54'
	DOMAIN:'mail-wm1-f54.google.com' HELO:'mail-wm1-f54.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.151  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.128.54 mail-wm1-f54.google.com 209.85.128.54
	mail-wm1-f54.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.63
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.68]); Sat, 24 Aug 2019 11:54:13 +0000 (UTC)

Okay I got a bunch of qemu/KVM questions....

I followed Dider's guide, it worked up until I went to run the script. 
Is it normal I have permission denied errors for ./qemu.sh?

Also, any reason why it activate my microphone input automatically?

Lastly, it's throwing out GTK is disabled errors. I /thought/ that got 
fixed, ya?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
