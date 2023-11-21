Return-Path: <blinux-list+bncBDYPVTOXSQEBBAOH6CVAMGQEI4N2GGA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1E97F249B
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 04:26:58 +0100 (CET)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-77a033cbd96sf535228185a.2
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 19:26:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700537217; cv=pass;
        d=google.com; s=arc-20160816;
        b=TI9HOfsu8Um1z2UX28Ohp7NKvb//DEoLQdVNX8zF52D2uHx23PoxzX+h8eDV1BlGo9
         GHIArOER3QYpYXwM6WeJSVnnIYimX6SHdGKTIscKqD3xd5CkOHobbT7eVn/OYr/VT7vV
         JGd/5ukRQpfzdNYa0E369S4NhOiWiFaybiz94J3AXn1Y7HwR1KPw6fQrV8Lgcln/vyKb
         XVZGvX1YzoB+IMm+uI8uok0+y4/pJJ/J6UrZxb5MB4VET2vkp08NStxPBVf3NUGTTsYc
         SIf7mQkjEydorHVgyE7QvbozB0frHh2Al/3lburhabxALDGjbJWBWgM8p77z+Aissoc1
         3nUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=iXtjLr5pLf9RQKKbI11SCBwPh53ofQNIHY/wp0fN+Q4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=wS9GezlYmzSwTcWuebKH9qLzE3Xx0cCDmY8nHhgjl9MUT/WUJe2gVdD0kYLV/RjWMi
         UgQPUYNdjggaj2gmFWx242R4y4POoc/UImk01z63etwJkPU0o6R6ar3AGuu2XuPsiOrA
         WZRIM9FLzVzHpMFc/w0qTvV2pHqcaYuW1R/XUZPvRgrGp2jrag++65pjwZmJd32F7G9P
         8Opvcr16gTaDpGU0pZ9FtzQ5KPK1Nzhm2WqmAVGWqkjSqyMsks84Mku0uKJuFOBY9rfS
         OCC+x+ZhCLtZf7lkll5RAvzDvVaSI+OaKK+Pr6V272iyWDaDTThceCdh132ywOGHpPlS
         TIdQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700537217; x=1701142017;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iXtjLr5pLf9RQKKbI11SCBwPh53ofQNIHY/wp0fN+Q4=;
        b=JjiMb2ffP5InziOIpqMwdiFUL/aNd7wrioPxK/b1OOHierdRNefhwPxdzDptKNh0it
         rLxPTAv+vz3ve6NDnE1dxFYp4tzB/XKkq8+fKQgZKNaGrGUFhcXeWPFxxLvWDohmDpbm
         wLvRWIARGv4487n5W9Zg4P6zo3no07DoTbkRhs7tIWEuab+vpZuc6KXOHjspK/xF8QG9
         r+YaKudOb6zVCaEGA8UuML2pSURL8XFhlht+8SwWwekaUYRzABChm1Kky+PopxY1+dV6
         fe6Wa/U3HuiI0Q3uA8fF4AoZVh7JvOtmrolOGgRHJHhwReBAP8JkmZr0obboG1UfaOG+
         aV7Q==
X-Gm-Message-State: AOJu0YyCM6CZVpjxgwQ+z0Ct029FLUjC77Qn0LVMxeIc0Z2XFMbxS9yr
	/cyioIzueAwWkbjANQM7aFrO1g==
X-Google-Smtp-Source: AGHT+IHZ+MKSLboNrw4lZdFiz1o4p39EGc0xu9nLX1hoyspDmzYY9NETBCS3oxzOF4BaT3fouVRPag==
X-Received: by 2002:a05:620a:14aa:b0:77d:5852:8fc4 with SMTP id x10-20020a05620a14aa00b0077d58528fc4mr859791qkj.23.1700537217542;
        Mon, 20 Nov 2023 19:26:57 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5704:0:b0:41e:89db:3bf4 with SMTP id 4-20020ac85704000000b0041e89db3bf4ls4804969qtw.2.-pod-prod-08-us;
 Mon, 20 Nov 2023 19:26:57 -0800 (PST)
X-Received: by 2002:ae9:ea04:0:b0:76f:17ad:3c83 with SMTP id f4-20020ae9ea04000000b0076f17ad3c83mr6909747qkg.47.1700537216714;
        Mon, 20 Nov 2023 19:26:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700537216; cv=none;
        d=google.com; s=arc-20160816;
        b=W1TtT1y3aH3qjDAk/mhVCG9ngKpC2Os4I5TsRcALEqQpA7HMIHo1VIAB/iB52CgAQC
         q9tg9XO1IdFlVdJZfDVPfk97b+pjtlY/f9GHoEyowB07PwcjT69yL4owU6YbtsQES8rH
         IMdkPBlUE+cSKfc8O9QdoxRSa97imztjGmy3DOG/ry57Fxfpgw+tGNql2+TRG0MQhhsl
         mXbAwdb5LF9dFky33kJKEHeNpwHrbJ+wChCuYfDnw7V0/uQgvHfWXL5vjJ2iux5CQT5e
         L5vDBcW/KYBhgRZO2EKDbnN3iMV2QstdmV1iNqygYcfLHS5njsAwQ63GFcqqebCnGROD
         rLcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=WR4cjRxUk9qXhkByqSPjwKXgSgCdT0jPoSV2uuInvyo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=qa4S+NBNyfKsNZHoDrLyAiWNTHqtp245yogA4nQ0+WQPmGkidu+gKsI5TniMUoHXxW
         atwfbKi5OJTHkOu7RUc+kLSVCkHUDgCxPkZx6aopQJ1KO1+yoV+88T6cfWH2O2Ej5aSQ
         4iqTAi24jq9MFPLy7f9WI9QeBPB+Nc9k1dNbz9QIDs5XFcJ/fRgu/JZzucdYs3r5tITQ
         39WrORvrdgNLwVVwpIPeF1olZbOcU23EGmk4/BIB4SddAhsTMtDP6+LZtlBqTJ1IqxVV
         AhZBtdJ/SNOfkZ7QcE3uPfWC77edS41bC7jRsi7TE5rMUJf1zaEw2roGUiEdANekmFYN
         l95g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id bj4-20020a05620a190400b007681446a032si8893204qkb.269.2023.11.20.19.26.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 19:26:56 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-340-MGihr4cYMaaJMQtWdkjXUg-1; Mon, 20 Nov 2023 22:26:54 -0500
X-MC-Unique: MGihr4cYMaaJMQtWdkjXUg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C4EE852AC1
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 03:26:54 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 78C1A36E4; Tue, 21 Nov 2023 03:26:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7084436E2
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 03:26:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 52EFB185A780
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 03:26:54 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-451-whTvM7q-NIuPEZfXvxV9nA-1; Mon,
 20 Nov 2023 22:26:52 -0500
X-MC-Unique: whTvM7q-NIuPEZfXvxV9nA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SZ8tg688Mz4GHX
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 22:26:51 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SZ8tg5kfNzcbc; Mon, 20 Nov 2023 22:26:51 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SZ8tg5cLxzcbC
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 22:26:51 -0500 (EST)
Date: Mon, 20 Nov 2023 22:26:51 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: fleacollar.sh weak on gpg2 key creation
Message-ID: <e781cf8b-4bdb-c6b5-90f6-174d2dadb653@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

I sent a suggestion to the developer of fleacollar.sh which should fix the
gpg2 key generation problem.  Two parts, first a sleep command followed by
`ls -recursive /* >/dev/null` lists all files and directories on the
system from root on down and sends the output to /dev/null.  This
generates all manner of keyboard output and allows enough of a delay for
the key to be created.  I don't know if that was ever tried or
implemented.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

