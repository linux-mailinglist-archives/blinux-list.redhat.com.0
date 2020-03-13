Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 0B19C184DB1
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 18:34:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584120845;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KiBB4mlPRnleL67ZB+QM8o36h73VdeROkfkTkdSPxlw=;
	b=eRRrGYEOwynXjH+031Bnx9N3QwmjReOc9uyQOpyOpi6uR0o8NfTmG3YHC/FNyOzSQ4k5ZJ
	HZ95O7r2NNVcXf9hbrfwt2d9MobBgooevIEJHspdlQq8VV0HM9S0zLTcYbH7ZWQUe8JACK
	gGYRYOGWOX8jgtb0JO0SPFMNDPOKNAA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-272-bXuzDuA3PDyYCnlf0uYnaw-1; Fri, 13 Mar 2020 13:34:01 -0400
X-MC-Unique: bXuzDuA3PDyYCnlf0uYnaw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDFB613EA;
	Fri, 13 Mar 2020 17:33:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F16560BF7;
	Fri, 13 Mar 2020 17:33:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C61E88446C;
	Fri, 13 Mar 2020 17:33:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DHXqs6012912 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 13:33:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ED4D52028CD2; Fri, 13 Mar 2020 17:33:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E833E2028CD4
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:33:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 252EC1017E53
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:33:48 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-209-j3g4r0HhPuSm2wTGDfRZoQ-1; Fri, 13 Mar 2020 13:33:45 -0400
X-MC-Unique: j3g4r0HhPuSm2wTGDfRZoQ-1
Received: by mail-wr1-f43.google.com with SMTP id z15so13142429wrl.1
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 10:33:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
	:subject:mime-version:content-transfer-encoding;
	bh=Ni429MyhCYPk2uXXvLFb0RXYPLyBZ1qTiYCy9FCHYXg=;
	b=EvWL2RnGC/h83mGRXHZV0fNp+QYbnepxKTXZqe8GO8O2+xS/TO6487BYCT4XNxDPeX
	mB3UU0hxqz6HBIuWCngWBZB9HUx+1YMbsO5baYEK1TUbOshu7R8FNHK+IWXJLwHeqsOa
	Cb65g8u8qismimY+wexm9tK/HOk9yLYQMos63wTkgX5am05hYD+07XpNK4sXfDvYqBDC
	cDXaLBgw1RV9jkY/AWVs75DcMyzyri/gdSWvZ3j4uglTdBjjDHLWJId7xpIpPenT60da
	4a9Gk+JQiRm920EZR6frDwzc9KTMEtjJIYYrC9l/+5bEcwjwbf7cBqjLszx0RkP6uabq
	Qz/g==
X-Gm-Message-State: ANhLgQ3J/2LLWytvgeDSaSwbHRTYrQvfgTc8dj8jlOBdcaupGMP2Lb9l
	MiLuJDCNvDcHcNzIFrLoJ+H+xfKYX9Q=
X-Google-Smtp-Source: ADFU+vsqYiKeo0HFcmzD5GB7M/u+uK84AzIsnvtok+HV+EdaPN05mCeqop/TTKBOfuJzTUvaejHGdQ==
X-Received: by 2002:adf:a510:: with SMTP id i16mr20086444wrb.292.1584120824376;
	Fri, 13 Mar 2020 10:33:44 -0700 (PDT)
Received: from [127.0.0.1] (cpe-75-189-192-174.nc.res.rr.com. [75.189.192.174])
	by smtp.gmail.com with ESMTPSA id r3sm4613652wrw.76.2020.03.13.10.33.43
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Mar 2020 10:33:43 -0700 (PDT)
Date: Fri, 13 Mar 2020 17:33:39 +0000 (UTC)
To: blinux-list@redhat.com
Message-ID: <3e6246f3-84ec-4f4b-93eb-1f957716f609@localhost>
In-Reply-To: <Pine.LNX.4.64.2003131317210.19101@server2.shellworld.net>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
	<000a01d5f93d$6af79770$40e6c650$@yandex.com>
	<Pine.LNX.4.64.2003131317210.19101@server2.shellworld.net>
Subject: RE: Stormux is born.
MIME-Version: 1.0
X-Correlation-ID: <3e6246f3-84ec-4f4b-93eb-1f957716f609@localhost>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The Telegram group is in addition to the email list on groups.io, it isn't meant to replace it. Telegram works better than email for some, because it is realtime text and voice chat. Nothing that existed is going away. New methods of discussion are being added.
~Kyle


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

