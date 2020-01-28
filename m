Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 1734614BF24
	for <lists+blinux-list@lfdr.de>; Tue, 28 Jan 2020 19:05:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580234749;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1ooU6dWPQjzqjGe8gRkXaBsmtWk2Khk6zBuD1HkBeJE=;
	b=UZEoasgL2tWmfvn5kG7vR5b9irZ7hQHSKQNh+wqOJYXH7K9U76nM1RljRNFQBcd/RAm2/a
	DAw8jAPQvLm+cJWFfP7yEDyb7924weim0nTXqgPpztuplu0NvYBU4edZTw1++dATv5zoMM
	JBQT8R21bWPi/4IJ/oa0xLgMmlE0/JE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-FbfiwCG3OhGNYxcWVgS0SQ-1; Tue, 28 Jan 2020 13:05:16 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2046B800D4E;
	Tue, 28 Jan 2020 18:05:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98BBA5DA7E;
	Tue, 28 Jan 2020 18:05:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 50FD838A1;
	Tue, 28 Jan 2020 18:05:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 00SI4rE9031468 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 28 Jan 2020 13:04:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 262BC2166B27; Tue, 28 Jan 2020 18:04:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 21CF22166B2B
	for <blinux-list@redhat.com>; Tue, 28 Jan 2020 18:04:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1BE59801572
	for <blinux-list@redhat.com>; Tue, 28 Jan 2020 18:04:51 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-212-QY89F1egOA2_4Y6IlmMw6Q-1; Tue, 28 Jan 2020 13:04:48 -0500
Received: by mail-wr1-f44.google.com with SMTP id y17so17139967wrh.5
	for <blinux-list@redhat.com>; Tue, 28 Jan 2020 10:04:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=Pzx9w0HI15nBZcwxazJQMx6qD+Qw3IilYse6f36ronQ=;
	b=tHO6TZSxCac+PlxT/FgbswCpFEXEmjhxpRMEvHWYCs7v1f5/ISC0RjUQqpwl2bzQ6p
	QbUJWm6DLkMM3NOrQToVSK/KEkAOKd42kTZucKgrOdZoQT02zN+54MRVhgYJel3PyMs6
	9A/7e0lPsZngSA5HxlC0hiUnhxmYnvD9Tp6BZY6Y5Dle+w0ePaXl/JIgWAMTtdpduVgX
	fysdzCHzCXS/6HgFmx2iPT+iinmFTEkMSO0vlUPAlkn6FyfLFfHSCB0amp6OaYOsvmUt
	c92SaOvyCJib5atvMej+WkajzUxsxHZYlrr1JEHnZirRn3AqTa2OXLsPVEEPfO6rFdbh
	eE2g==
X-Gm-Message-State: APjAAAXKU4dllhiXbCfQr/eX4EYsJRGFzg0QLwEhDIUuWMB7LvwD+Apt
	bvCzDyLiRJWV0hfLI31nsR4PVRqo
X-Google-Smtp-Source: APXvYqz/fvDFWKjgzi+zCPAwwAeXQ6CIahPGjx6bxd8nsIXqxyVGOuAv7n0dUbME7hbELCW/JtGfWA==
X-Received: by 2002:a5d:6406:: with SMTP id z6mr29998912wru.294.1580234686900; 
	Tue, 28 Jan 2020 10:04:46 -0800 (PST)
Received: from ?IPv6:2a04:b2c2:812:7e00:b80c:ec90:1d48:a3d2?
	([2a04:b2c2:812:7e00:b80c:ec90:1d48:a3d2])
	by smtp.gmail.com with ESMTPSA id 25sm3856905wmi.32.2020.01.28.10.04.45
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 28 Jan 2020 10:04:46 -0800 (PST)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Distros and VMs
Message-ID: <4cfc4ca0-ef28-dfe9-f9ce-6cd52677b15b@GMAIL.COM>
Date: Tue, 28 Jan 2020 18:04:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-MC-Unique: QY89F1egOA2_4Y6IlmMw6Q-1
X-MC-Unique: FbfiwCG3OhGNYxcWVgS0SQ-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I've run into something really, really weird with my setup and was 
wondering if anyone could explain what's going on.

Essentially, I can boot any Ubuntu based distro fine, get Orca talking. 
but the moment I go to run any of the distro installers from a live 
session, nothing at all. You heard right. Nada. None of the Orca keys 
work. It's as if there is something blocking the Orca keypresses. I'm 
using things based off of 18.04, such as Ubuntu, Zorin, Pop_OS! (which 
worked okay after tweaking)

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

