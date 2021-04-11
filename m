Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id DCCF935B5C0
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 16:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618153069;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Z+UYABjZe+TSY3N4vafeH9L8Q10DLMJK5XFtmS+vJ2s=;
	b=FK27oKdzN5E4D5H2RtovH4dyT61KPeuIrPqDXGDSeCfvjIE0H/mvRWFSk/j3PGrLDIYABd
	0A5/DrDgmWLGvBZ3VFyDa7WoDrJvrhhPJhwrg+MF+uUqK2TYy/grtQMQCGtT3EGTWhnrPU
	gHmxYwgu5li/NtWp/QrAJgcGwL32QgY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-512-GX_PNzSjPVCMRYdowN331A-1; Sun, 11 Apr 2021 10:57:47 -0400
X-MC-Unique: GX_PNzSjPVCMRYdowN331A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C66610054F6;
	Sun, 11 Apr 2021 14:57:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 49CA15C22A;
	Sun, 11 Apr 2021 14:57:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 06FA344A5B;
	Sun, 11 Apr 2021 14:57:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BEvcQH001132 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 10:57:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 054B51111A5E; Sun, 11 Apr 2021 14:57:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 008F21111A5D
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 14:57:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED66E802816
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 14:57:34 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
	[209.85.218.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-341-dxa7MqBuPFK87yOwL_CWkA-1; Sun, 11 Apr 2021 10:57:32 -0400
X-MC-Unique: dxa7MqBuPFK87yOwL_CWkA-1
Received: by mail-ej1-f48.google.com with SMTP id g5so9357378ejx.0
	for <Blinux-list@redhat.com>; Sun, 11 Apr 2021 07:57:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=xK0QpbgzRHPUpJnHvlSCky+gTYCpdpEHn2r2fYhAqXU=;
	b=Zl4JKOOC3l08rTiTfUEu1Y6dOIwKLGZpw/YCZCnhaIUUTz7KFovwwMAz8ppZZ3E1C1
	Hd5GzQG0d5WXJ/EImp5zszbBcuql2hREmgnHfDwIVH06khACfSXi5UOJWJmjgZNlwnwn
	QAOUBsUCx7q2/VdruEpJGBRbSqYPqx2dTUSwPUjwOm5elz6Sw4HwHnhOega1c/jGt0BU
	GuVt5Wtu7ijPEV0y3SwVJc4p3on73epWNzDpwi6BiT1OmXV+UOSfD56v1PG22UhrvPdC
	pokwd5y7ltXU0uzc0yMoM+Igvv7jRi5OWJQ4XWCJoALPoXXXndyMb+5yClXAXafJYbJ0
	YVrA==
X-Gm-Message-State: AOAM531l3jwGW0iPfttOFut7CdKF8O8Kns9QLktUAMsHjN1CIs5qD6EH
	Wlnxnz5inUwSliYjNRqkM4ZqUb8mb1EC0A==
X-Google-Smtp-Source: ABdhPJwBA9uekudHuIMhPeH3erofNvYU8BW1T9AdyIDI9cCVVmo1NmK+j/+pg8kqt9CxmOmsXJBEiQ==
X-Received: by 2002:a17:906:f283:: with SMTP id
	gu3mr23370872ejb.91.1618153050990; 
	Sun, 11 Apr 2021 07:57:30 -0700 (PDT)
Received: from [192.168.1.5] (net-188-153-130-61.cust.vodafonedsl.it.
	[188.153.130.61])
	by smtp.gmail.com with ESMTPSA id t1sm4806746eds.53.2021.04.11.07.57.30
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 11 Apr 2021 07:57:30 -0700 (PDT)
To: Blinux-list@redhat.com
Subject: Some questions about Arch Linux
Message-ID: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>
Date: Sun, 11 Apr 2021 16:57:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.9.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello everyone,


Since we're kind of in the subject anyways, let me ask another question, 
totally unrelated, but still about Arch:

I've installed the system, and everything works fine, but not 
accessibility, not as it worked in Ubuntu and Fedora at least.

When I typed in the terminal

export ACCESSIBILITY_ENABLED=1

all in caps eccept export, and I tried to start google-chrome, nothing 
talked.

One other app that didn't talk, was Signal desktop, which I managed to 
use wonderfully on both Ubuntu and Fedora, so basically, accessibility 
isn't working as it should be I am guessing.

I also modified the .xinitrc file at /etc/X11/xinit/xinitrc, since 
that's the only one which is available, and I inserted the following 
lines at the end of the file, after installing the system:


export GTK_MODULES=gail:atk-bridge
export GNOME_ACCESSIBILITY=1
export QT_ACCESSIBILITY=1
export QT_LINUX_ACCESSIBILITY_ALWAYS_ON=1
export ACCESSIBILITY ENABLED=1

Nothing still.

Any help would be apriciated.

Best regards.

Francisco.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

