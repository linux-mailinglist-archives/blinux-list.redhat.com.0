Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CC1626EC1
	for <lists+blinux-list@lfdr.de>; Sun, 13 Nov 2022 10:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1668332299;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2pQVlHlcYOJswAKcgu/7x9Xt8+Mj6zaeXpGt0deW9OA=;
	b=VZ2H3orlaiFG1a6bjkOd4K8MgPCd/zyuG+lXr5fYyWkH5ER7LA6C+keTzFzm6HWN/wadK/
	xB053TVsN4rmZ1MjCT+WUjVN3vq99mhKpzNry5rcdzg7BXaBTs5tHmIQpROV9XEppz7FMT
	Hoi5e1eXwbszqMkGsW48wMsTH8o1lCA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-136-Ox9SK8NnPyan0navQ7Z6KA-1; Sun, 13 Nov 2022 04:38:16 -0500
X-MC-Unique: Ox9SK8NnPyan0navQ7Z6KA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A06A4185A792;
	Sun, 13 Nov 2022 09:38:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 08CB449BB60;
	Sun, 13 Nov 2022 09:38:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 21E0B19465B2;
	Sun, 13 Nov 2022 09:38:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 13 Nov 2022 17:37:56 +0800 (CST)
To: blinux-list@redhat.com
Subject: I couldn't start amuled
MIME-Version: 1.0
Message-ID: <mailman.7133.1668332283.3004.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Assertion failed: ./src/common/socketiohandler.cpp:Install_Callback:50:
Assertion '"socket->m_fd != -1"' failed. shouldn't be called on invalid socket
Backtrace follows:
[3] wxOnAssert(char const*, int, char const*,char const*, char const*) in
/usr/lib/libwx_baseu-3.2.so.0[0x7fa4b56a7e23] [4] ?? in
/usr/lib/libwx_baseu_net-3.2.so.0[0x7fa4b59b0d7b]
[5] ?? in /usr/lib/libwx_baseu_net-3.2.so.0[0x7fa4b59b0f83]
[6] wxSocketBase::SetFlags(int) in
/usr/lib/libwx_baseu_net-3.2.so.0[0x7fa4b599c810]
[7] wxSocketBase::Peek(void*, unsigned int) in
/usr/lib/libwx_baseu_net-3.2.so.0[0x7fa4b599d591]
[8] wxProtocol::ReadLine(wxSocketBase*, wxString&) in
/usr/lib/libwx_baseu_net-3.2.so.0[0x7fa4b599201f]
[9] wxHTTP::ParseHeaders() in /usr/lib/libwx_baseu_net-3.2.so.0[0x7fa4b598b098]
[10] wxHTTP::BuildRequest(wxString const&, wxString const&) in
/usr/lib/libwx_baseu_net-3.2.so.0[0x7fa4b598f932]
[11] wxHTTP::GetInputStream(wxString const&) in
/usr/lib/libwx_baseu_net-3.2.so.0[0x7fa4b59902d5]
[12] CHTTPDownloadThread::GetInputStream(wxHTTP*&, wxString const&, bool) in
HTTPDownload.cpp:387
[13] CHTTPDownloadThread::Entry() in HTTPDownload.cpp:224
[14] wxThread::CallEntry() in /usr/lib/libwx_baseu-3.2.so.0[0x7fa4b57d35d2]
[15] ?? in /usr/lib/libwx_baseu-3.2.so.0[0x7fa4b57d3bdc]
[16] ?? in /lib64/libpthread.so.0[0x7fa4b6058e45]
[17] clone in /lib64/libc.so.6[0x7fa4b512c4af]
termiated

How to fix? Thank you!

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

