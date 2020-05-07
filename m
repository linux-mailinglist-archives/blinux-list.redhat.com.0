Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id A63C51C9023
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 16:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588862326;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kFwwgo4FOKEuy+ZybrOYD2CxP5mhKnLWg6lUw9dAamI=;
	b=IlNRSR1d/4tEkQNAmwAyPYKsJMve/tayimmnR1Ny96Qa8z4Rojse9L4Blw0F14F9cvMpGo
	7uX8pJrLdOmUIa5G86rpb/FcOB8Lb+Nn/Y03MrrExOKA1nP4VlXNmHaTZCzXX5/e8Yhu+G
	HMkff3FReagdEn/W2N+ZkHT6fSJDIPM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-moQpBjJ1N828LMuANgzWXg-1; Thu, 07 May 2020 10:38:44 -0400
X-MC-Unique: moQpBjJ1N828LMuANgzWXg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B5E9B102C84A;
	Thu,  7 May 2020 14:38:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04CF41000337;
	Thu,  7 May 2020 14:38:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9E6AF1809540;
	Thu,  7 May 2020 14:38:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047EcWI1029497 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 10:38:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 00C84202B17C; Thu,  7 May 2020 14:38:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F01EB202B172
	for <blinux-list@redhat.com>; Thu,  7 May 2020 14:38:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 223C5833B44
	for <blinux-list@redhat.com>; Thu,  7 May 2020 14:38:29 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-166-ROT2ewu1NGighiD5qKuM1A-1; Thu, 07 May 2020 10:38:24 -0400
X-MC-Unique: ROT2ewu1NGighiD5qKuM1A-1
Received: by mail-qk1-f179.google.com with SMTP id b6so212390qkh.11
	for <blinux-list@redhat.com>; Thu, 07 May 2020 07:38:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=upEptvJ7v7rHOkV/f3looqWlEKhz90Va+D3LLFh6k58=;
	b=KxN3qOZB3qVMvy6A/MLwNrchZKKjKRbH3ml5UvvFExeyUFrCS/BbECSG5F+uClen7i
	h8MbgjjjApJzexQSu90Da7xXu1nzPyM9etqEKKzxnz6A1UGs6u50eX6Ru+5ICH3CfwU6
	yrTs8jvd2OJjaD8DgiIs8m2aKEITxeWw6s2bf2JwUHdv70E7E1zvZ9s7jCbljSRGKUzp
	g2B+aCjK3vkKKJYd94jrkG3N5WYDRDdX9abxtI9SBEo8EqyKdCMyPRIPTArsQnTmGbrK
	l/sCwtiVoLI209k0YkdhJyRm5t0vDLU3VKZSd8U3fSSslqlZ3hFmUgx8Rigfvx/T8TFS
	mtKQ==
X-Gm-Message-State: AGi0PuYRKm7r4Wq3DuI1wnjPxXuTbHWnjr6iRGmJYdZWaG9BZHi9ygv8
	OS54OFCHuYqDN/eKwiK0vf5qw3Vmadh2cLNroTInFeMh
X-Google-Smtp-Source: APiQypKQlF0FWlFrxN2oHjwYxSI9+mYlKhPoFPJM5g+nSy/sXWxNBauSw3MPDCutkCbdZZzloxM1bl3+YcUNgk3u6AQ=
X-Received: by 2002:a37:6f47:: with SMTP id k68mr15097969qkc.341.1588862302948;
	Thu, 07 May 2020 07:38:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:932:0:0:0:0 with HTTP; Thu, 7 May 2020 07:38:22
	-0700 (PDT)
In-Reply-To: <5D2DB0EA-D8FA-4CF5-98B1-1CFABF15DCC9@cfcl.com>
References: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
	<5D2DB0EA-D8FA-4CF5-98B1-1CFABF15DCC9@cfcl.com>
Date: Thu, 7 May 2020 14:38:22 +0000
Message-ID: <CAO2sX30xQ=rWrGbxCnhozEVzYTwG3_BGoGJiTmDFb45uYFwvgg@mail.gmail.com>
Subject: Re: Anything besides vanilla Arch?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 047EcWI1029497
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Considering the OP mentioned Windows, I'm assuming they're in the
market for x86 distros.

Sadly, I'm pretty ignorant of Arch and its derivatives, and perhaps
you think Debian is too close to Ubuntu with Ubuntu being a Debian
derivative, but if you're willing to go a bit further abroad, the
Slackware-based Slint boasts excellent out of the box blind
accessibility, though I haven't tried it myself.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

