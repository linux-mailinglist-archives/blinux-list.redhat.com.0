Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 046E510DEDB
	for <lists+blinux-list@lfdr.de>; Sat, 30 Nov 2019 20:27:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1575142071;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kzpTrUdVv8RbqY21ms7jclMX3TLjdFteaSTQD9zrpkU=;
	b=Wwac48DpoZ9eF03pcxkx19yHeKbfw5NFWvo4pj68BC8UakCoEfdxKpgNVC0qbmWVmEKXzw
	SiK5NJRrRAgG7w4EYbsTYOBF08qOLNK83TW5B3k1crBy74m5TsZIp4AVMhmf5XSZikhemi
	8PUHrYF50vR90Dw6XOBClalBnw/5waU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-381-o8ND-XHJNcOYCVcUYWP1zQ-1; Sat, 30 Nov 2019 14:27:48 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CAB18800D41;
	Sat, 30 Nov 2019 19:27:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BFD2C5C219;
	Sat, 30 Nov 2019 19:27:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3F0964BB5C;
	Sat, 30 Nov 2019 19:27:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xAUJREEN017456 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Nov 2019 14:27:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0AABFD1BCE; Sat, 30 Nov 2019 19:27:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 062A5D93BD
	for <blinux-list@redhat.com>; Sat, 30 Nov 2019 19:27:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2FC0680289F
	for <blinux-list@redhat.com>; Sat, 30 Nov 2019 19:27:11 +0000 (UTC)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-324-f2WZbeO_NvmTpoMZCv--GQ-1; Sat, 30 Nov 2019 14:27:08 -0500
Received: by mail-pg1-f193.google.com with SMTP id b10so16082296pgd.4
	for <blinux-list@redhat.com>; Sat, 30 Nov 2019 11:27:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:reply-to:to:subject:message-id
	:user-agent:mime-version;
	bh=15nW5sbkgL8FZSZnGha0db2ZqUBvyqFF+l7EZZwW0oE=;
	b=oSQBdVV24SFjScW/8Pi/4ieMrISl7MqEtRRgp5wxLHvRXc9yOJolQk2zK78IRnqqbl
	OzLSv4K5yRHjXo3C81winFnzNNlBunVg8t07c9dNa12uo5wPd7azk5uKBGFStW+qyGbk
	o/Q61LFqhh9cGtJTIOp52eo6E49+uHuiZzUEBLFsAH1ycBp7CUZ9lheMVxk3v2NGFdcW
	aj6Aucgoxc3W2V4gxOeZve0AXRI7wiDXbNEjcpmA4VlQg20V226VErfXXrruzWz7DRVx
	hQgC7R3aC0ITbaB92v1DYBpASK2nCbrPVjqHFF8iGnmqMazhRrr/cfKM1oZbDRE1gMkV
	h/ew==
X-Gm-Message-State: APjAAAU1/CVOB8lZAzHV3phePUSdudzmPdi5pcvCw67mXK+FefpdCSlP
	0nzzPDkhG+9cO3/O37ZpCM/yYO+r
X-Google-Smtp-Source: APXvYqwFuhbxHfW+Zaxwje6TyxAzXMqxpuowD9+9MEmZEDJfgdBTSWJFiZ6VZmvvZgIvoxq8tnhHsg==
X-Received: by 2002:a63:3089:: with SMTP id w131mr2262457pgw.453.1575142027370;
	Sat, 30 Nov 2019 11:27:07 -0800 (PST)
Received: from tom-M2800 (72-160-86-209.dyn.centurytel.net. [72.160.86.209])
	by smtp.gmail.com with ESMTPSA id
	i127sm15134876pfe.54.2019.11.30.11.27.04
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 30 Nov 2019 11:27:06 -0800 (PST)
Date: Sat, 30 Nov 2019 11:26:57 -0800 (PST)
X-X-Sender: tom@tom-M2800
To: orca-list@gnome.org, Blinux list <blinux-list@redhat.com>
Subject: OT: Braille graphics display
Message-ID: <alpine.DEB.2.21.1911301122130.20764@tom-M2800>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-MC-Unique: f2WZbeO_NvmTpoMZCv--GQ-1
X-MC-Unique: o8ND-XHJNcOYCVcUYWP1zQ-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xAUJREEN017456
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Since it is off topic please reply off list.

I am looking for any information on any functioning display capable of 
showing tactile graphics.  I have found several articles on groups working 
on this but nothing definite that has made it to a point of even being out 
for testing.

Thanks
tom


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

