Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3909BE59
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 17:00:43 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id ABDC7107DD22;
	Sat, 24 Aug 2019 15:00:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DEDE45D6D0;
	Sat, 24 Aug 2019 15:00:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 870634E589;
	Sat, 24 Aug 2019 15:00:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7OF0SEW008053 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 11:00:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C85C5BA75; Sat, 24 Aug 2019 15:00:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx24.extmail.prod.ext.phx2.redhat.com
	[10.5.110.65])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2EC5850B
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 15:00:26 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 8947C10C6967
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 15:00:24 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id t16so11228382wra.6
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 08:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=f2+Q3m/5A7bQRoQVKdxm64FqcER6+/F7iRcQnbQLqAI=;
	b=XcOTn6gt7zPejuzx8LdTwfOloK2P4Vi9OFCabPsE96RsyD7QOVrG5JgC2At7gA3qUk
	4+7rzbALqv7lWEjetuRqwiqkVPNYeSoI9icAgbHj3pq3YG0a9VGQs0O/opD8D5hIiWDH
	/iXQvsri8zEF6qwZxeKmgjbzDY2C92SGRJZTMw3JgcM1BRtZ+CJ5t+N9tLdPuK6G9fqz
	EYoITMyFNz0EvOTSt7qFqDGbRBj5zrDkbV5H9WpMQgZLKf+ju6jxJ83vOMhzAw7nsbvV
	WKWJRZkEzC0+NFiPFpwAH6/fFVWWTi8cV+3En1SLUgCbMId6rFJyzvFvFNsbSDcpERQ9
	jsvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=f2+Q3m/5A7bQRoQVKdxm64FqcER6+/F7iRcQnbQLqAI=;
	b=lXMKqbdLwI0bMntAnvcpg/ec9iQ8j8CNOxqLwAJQ2cKrcJvrC7SV4kGdfGCeY0Nx6D
	N/ReQ6JFqjOI2ND4F6Bn72oYxIaPOv9Wl53fQtLkx302Yrsd+tmc3evVRsch9oMz+8rS
	3NJlKsOc3T0oZesdiAReC+avnuVTd2jmo5OhkPncw9isQPP+NFWMEKn9nA6iyTdkeOh9
	USYYxRkx+FcdMfnXf6gIBPJ4HaDgmFiwafhB7xw8NbtF4eDp3XOrBSBhVzT/zNd/PO/I
	vIBM0DXwWU7QBhv+3o/yFl4wdPNSYDjOopBta7/ELtlFwHNakB2C84isaM9D2XQ4Dgds
	/4uQ==
X-Gm-Message-State: APjAAAVoaKrx8mBp2ewTCA19SXWyuxPp6452C0Jv0rw3P+NmzAP5/MPW
	x5o+z7Z0Qwch0fLVbaWueeQUMik1
X-Google-Smtp-Source: APXvYqyhItGDCKrK2QRpwqGwcm/Mxh4zvlrbzEqKXnF4+r966dQ/DKouLzEpKq8W4mwiZnh/JiFRsA==
X-Received: by 2002:adf:e452:: with SMTP id t18mr11467895wrm.0.1566658822929; 
	Sat, 24 Aug 2019 08:00:22 -0700 (PDT)
Received: from ?IPv6:2a04:b2c2:807:200:9d52:54c0:3f3b:a797?
	([2a04:b2c2:807:200:9d52:54c0:3f3b:a797])
	by smtp.gmail.com with ESMTPSA id
	b136sm16929597wme.18.2019.08.24.08.00.22 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Aug 2019 08:00:22 -0700 (PDT)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Slint package error
Message-ID: <b7cfca6c-6cfa-4efd-8e9a-7c9649412efa@GMAIL.COM>
Date: Sat, 24 Aug 2019 16:00:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.65]);
	Sat, 24 Aug 2019 15:00:24 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.65]);
	Sat, 24 Aug 2019 15:00:24 +0000 (UTC) for IP:'209.85.221.50'
	DOMAIN:'mail-wr1-f50.google.com' HELO:'mail-wr1-f50.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.151  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.221.50 mail-wr1-f50.google.com 209.85.221.50
	mail-wr1-f50.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.65
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]); Sat, 24 Aug 2019 15:00:42 +0000 (UTC)

I'll detail what I do to run into this.


1. I download a fresh ISO from slint.fr and the 'get and install Slint' 
section, which takes me o the Slint UK one, and I get the .iso from there


2. I create the disk.raw file with size 30GB


3. I do sudo sh qemo (else qemu won't work)

4. Boot up and choose auto partition


5. Get to the p[art where it asks to install packages, going with 
default options all the way.


Every package it tries to install, has the 'there was a fatal error' 
message with it. I've tried a fresh download, the md5 verifies the ISO 
as correct.

Any ideas? Does the auto partition break things?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
