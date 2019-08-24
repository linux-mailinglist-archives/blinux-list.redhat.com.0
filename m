Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA869B9E5
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 02:51:05 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D5AF6300BC7F;
	Sat, 24 Aug 2019 00:51:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D6BA19C4F;
	Sat, 24 Aug 2019 00:51:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BE4AC24FDE;
	Sat, 24 Aug 2019 00:51:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7O0oxkB020570 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Aug 2019 20:50:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4A3D8608C2; Sat, 24 Aug 2019 00:50:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx06.extmail.prod.ext.phx2.redhat.com
	[10.5.110.30])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 43A6C60605
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 00:50:57 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
	[209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 7516C368CF
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 00:50:56 +0000 (UTC)
Received: by mail-yb1-f181.google.com with SMTP id t5so4746345ybt.4
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 17:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:user-agent:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:from:message-id;
	bh=D3c68gC/cDbrVbSfzQGfM2iMY6pDbuanOCBKto4fQ44=;
	b=TaZGB2YdG24MmXqUoYY3B4zD9FDTMJv9NeOiL6aRpYfCPPFJe0hatlAQzMytk0xsem
	SvCeCKqFbeKXk3YnXxkEoFKq8O41d+TDYrpZXvUujPy+AGDzAZTdSk62/F0Ij6AC4LCw
	+Zxuw341bLKVt6St9/xxgNMWEiKry/sVOUAC/FvvR/klYmrztd8n+CzUaR5WdQKDYuJi
	BQ+AzKc2F9YDsw4x3+PDmHNZPklFUBGynZ3Hdx7+sWVG4rJsVhJdE0ZGr0Yh/IlhudXK
	lmVJvlhX78UH8hHP/mQb3r8/i+CxQ7kLJ3ltfKcPe/DOL5zeS5Fd8EY2k54IhigQzGGv
	kgrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:user-agent:in-reply-to:references
	:mime-version:content-transfer-encoding:subject:to:from:message-id;
	bh=D3c68gC/cDbrVbSfzQGfM2iMY6pDbuanOCBKto4fQ44=;
	b=P93lRs9eamcoB8MMyx+5Z00k1OLBWFI0Zrk1IyD1cfmUdSzKdN6Y1WnZpa0xInySsy
	zDmq1iBo3W0DMmIMwfzIlMmXe0wuk61XVhOitJBNcMCdx9Fa8w0dFHBHVc9zlNBEwHJd
	8gcU73yi/svJpQpNbrJ9v98qJv6JodmwUEhfHZq4FyNUtG3/j3E6rgpCl/ggMVXjBzvv
	etGctxxSLCbLTA1bagSJ4DftHc5lBGOM1ysWpGSk0JOvv0elXB1te1+KF/nhOYVPpY0v
	C3aNirlwbGCkFy1OWlC62VltXkRxwLDC6vzizZiNpgVEyhwULaOYY+nuhAiweQlXDkTp
	XUEA==
X-Gm-Message-State: APjAAAXTY27n9EradeKd7ogzE5KyIg/PsMw2sE63nElVDdhtdec9Kvmu
	E3xzb28n8FmMJLngjAzRBd1Ou0LKvG0=
X-Google-Smtp-Source: APXvYqwcaQyhAI9+CBcy58CFGWjDYEKyXMy/gyJTi+gelsrmo1A3gO6ynABYjbrsMmPUAAvxYyij7A==
X-Received: by 2002:a25:ced2:: with SMTP id x201mr5013447ybe.458.1566607855465;
	Fri, 23 Aug 2019 17:50:55 -0700 (PDT)
Received: from android-6116dfaa305bca74.lan (cpe-75-189-192-174.nc.res.rr.com.
	[75.189.192.174])
	by smtp.gmail.com with ESMTPSA id g3sm900098ywk.15.2019.08.23.17.50.54
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Aug 2019 17:50:54 -0700 (PDT)
Date: Fri, 23 Aug 2019 20:50:48 -0400
User-Agent: K-9 Mail for Android
In-Reply-To: <Pine.LNX.4.64.1908231729330.11612@server2.shellworld.net>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<A4215BB2-6107-4752-AC5F-679E449FC076@gmail.com>
	<Pine.LNX.4.64.1908231729330.11612@server2.shellworld.net>
MIME-Version: 1.0
Subject: Re: amazon?
To: blinux-list@redhat.com
Message-ID: <DCD8C4F3-9F51-486C-8E83-609B51DD8B03@gmail.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.30]);
	Sat, 24 Aug 2019 00:50:56 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]);
	Sat, 24 Aug 2019 00:50:56 +0000 (UTC) for IP:'209.85.219.181'
	DOMAIN:'mail-yb1-f181.google.com'
	HELO:'mail-yb1-f181.google.com' FROM:'kyle4jesus@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.219.181 mail-yb1-f181.google.com 209.85.219.181
	mail-yb1-f181.google.com <kyle4jesus@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.30
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x7O0oxkB020570
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]); Sat, 24 Aug 2019 00:51:04 +0000 (UTC)

I'm not saying that you should be forced to run anything. I believe I'm actually saying that it's up to the developers of text-based browsers to keep up with modern internet standards, as trying to force sites like Amazon to go back to 1995 accessibility standards is totally unrealistic.
Imetumwa kutoka kitanda changu

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
