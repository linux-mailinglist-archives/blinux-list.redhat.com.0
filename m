Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [216.205.24.74])
	by mail.lfdr.de (Postfix) with ESMTP id 3EE4B195CB5
	for <lists+blinux-list@lfdr.de>; Fri, 27 Mar 2020 18:28:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585330091;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=o9l5jFV/h769NB6XNBsKZkHy+93F9nbWfGGZfXOHygM=;
	b=YkonCGGvPIQK/12a4C2cd3/9fBrB05TmNXieTtpCANl8Lg3+zsP7CLdsd1CR9OO1TdkaPt
	f7llaplwleI/P3YwXcL6RFYwyx4IWbPXLoa+NAznx7OPi6+SH6amJZ8hnf40x6480GPvpw
	JJRELhELbGVSqqIJErp4vHKn4dt0lPY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-95-hp956KIsMhmON2JAKESdIQ-1; Fri, 27 Mar 2020 13:28:08 -0400
X-MC-Unique: hp956KIsMhmON2JAKESdIQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BB3B8018AA;
	Fri, 27 Mar 2020 17:28:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E73C760BF4;
	Fri, 27 Mar 2020 17:28:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E2F5A8A04F;
	Fri, 27 Mar 2020 17:27:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02RHRnwI015283 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 13:27:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 680092038B82; Fri, 27 Mar 2020 17:27:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 640562038B80
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 17:27:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE44D800299
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 17:27:46 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-490-cVw4DH7WNyCScRXU3VHBtg-1; Fri, 27 Mar 2020 13:27:44 -0400
X-MC-Unique: cVw4DH7WNyCScRXU3VHBtg-1
Received: by mail-wr1-f54.google.com with SMTP id m11so6481737wrx.10
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 10:27:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=HqZN9Bg2I8AIcG+YjD3FIVh5gGEiwfYkj0Aos/fWJfc=;
	b=pjgn8YGh2ryM7vPQSSZze/xSVrtJvSicPeOz4xqYKv4XMSLk4cQk0wxIFn5tjjrrbB
	IuBAB2xfkmNWiW3tEe01h5YPkKSLjkbs7ubDcE9p01HH68vtQOInRFYorclSTGq8axTY
	0poTrfzn5ssR3u7PXZTCTXnynJEt3XqYwL1PvMwfk6EeRi4ydvFxXmlgqjWIpIT14gFS
	lY1uT5y7AlEwhvuQV0Wh1OS3YVPilxznJpxe/EkPbe3qWwhwp/7GNwlAlXlV18klY1CG
	+cYXeSi8Ml/Dp2KR+Cau4cjnPXWSnmUfvfbYIAi5pXUuoCa1gC0YK+BDGrs7osaFiKG0
	VSkA==
X-Gm-Message-State: ANhLgQ0e3OjN+8FwAOc7+wNvnIBd1iD0UyEm4EEzh7k6Ud5HDteQWyYs
	FnSr0aV7BpGEHSSl+s8wK7/Aoe04GCQ=
X-Google-Smtp-Source: ADFU+vs0jJqeYpWd+CZVZswqcUrWVzIDiTAbR2QXHkbdnFP3UqV6XIg6XbW3Ds+7n5QBQEBU45pQUg==
X-Received: by 2002:a5d:6204:: with SMTP id y4mr511780wru.410.1585330062804;
	Fri, 27 Mar 2020 10:27:42 -0700 (PDT)
Received: from [192.168.1.6] ([146.66.61.41])
	by smtp.gmail.com with ESMTPSA id r9sm9215005wma.47.2020.03.27.10.27.42
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Mar 2020 10:27:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Subject: Newbee Linux user introduction
Message-Id: <B0D71794-95D6-435A-84FE-71D2D3D8575C@gmail.com>
Date: Fri, 27 Mar 2020 17:27:41 +0000
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02RHRnwI015283
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpNeSBuYW1lIGlzIFNpbW9uIGFuZCBJIGFtIGZyb20gVUsuCgpJIGhhdmUgYmVlbiBh
IFdpbmRvd3MgYW5kIGZvciAxMyB5ZWFycyBhIG1hYyB1c2VyLiAgSSBoYXZlIG5vIHRyYWluaW5n
IGluIGNvbXB1dGVyIHByb2dyYW1taW5nLiAgV2hhdGV2ZXIgSSBkbyBrbm93ICwgSSBoYXZlIGxl
YXJudCBhcyBJIHdlbnQgYWxvbmcuICBJIHdvdWxkIGxpa2UgdG8gZ2l2ZSBMaW51eCBhIGdvLCBo
YXZpbmcgZmFpbGVkIGEgZmV3IHllYXJzIGFnby4gIEJ1dCBJ4oCZbSBxdWl0ZSBkZXRlcm1pbmVk
IHRvIGxlYXJuLiAgSSBoYXZlIGp1c3Qgam9pbmVkIHRoaXMgZ3JvdXAsIGFuZCBJIHdvdWxkIGxp
a2UgdG8gYXNrIHlvdSB0byBiZSBwYXRpZW50IHdpdGggbWUgYXMgSSBtYXkgYmUgdGFsa2luZyBu
b25zZW5zZSBvciBhc2tpbmcgdmVyeSBiYXNpYyBxdWVzdGlvbnMuICBUaGUgd29ybGQgb2YgTGlu
dXggaXMgdmVyeSBuZXcgdG8gbWUgYW5kIEkgYW0gc3RpbGwgdmVyeSBtdWNoIGxlYXJuaW5nIHRo
ZSBjb25jZXB0cyBhbmQgdGVybXMgb3RoZXIgZXhwZXJpZW5jZWQgdXNlcnMgdGFrZSBmb3IgZ3Jh
bnRlZC4KCklmIHlvdSBoYWQgYW55IHN1Z2dlc3Rpb25zIG9yIHBvaW50ZXJzIHRvIGFueSBtYXRl
cmlhbHMgSSBtaWdodCB1c2UgdG8gc3RhcnQsIHBsZWFzZSBoZWxwLiAgSSB1bmRlcnN0YW5kIGZy
b20gbXkgcmVzZWFyY2ggb24gdGhlIHN1YmplY3Qgb2YgTGludXggYWNjZXNzaWJpbGl0eSB0aGF0
IENMSSBpcyB0aGUgd2F5IHRvIGdvLiAgSSBoYXZlIG5vIHNpZ2h0IGFuZCBJIHVzZSBzcGVlY2gg
YXMgd2VsbCBhcyBCcmFpbGxlLiAgSSBoYXZlIGp1c3QgbWFuYWdlZCB0byBpbnN0YWxsIERlYmlh
biAxMC4zIGRpc3RybyBvbiBhbiBvbGQgbGFwdG9wIERlbGwgaW5zcGlyb24gNjQwLCBoYXZlIHN1
Y2Nlc3NmdWxseSBhY3RpdmF0ZWQgT3JjYSBkdXJpbmcgdGhlIGluc3RhbGxhdGlvbiBhbmQgY29t
cGxldGVkIGl0LiAgSSBjYW7igJl0IHlldCBkZXRlcm1pbmUgd2hldGhlciBJ4oCZbSB1c2luZyBn
bm9tZSBkZXNrdG9wIG9yIE1hdGUsIGFuZCBpZiBHbm9tZSwgd2hldGhlciBpdCB3b3VsZCBiZSBl
YXNpZXIgZm9yIG1lIHRvIHVzZSBNYXRlICwgYW5kIGlmIHRoZSBsYXR0ZXIgaXMgdHJ1ZSwgaG93
IEkgd291bGQgaW5zdGFsbCBvciBjaG9vc2UgTWF0ZSBpZiBpdOKAmXMgYWxyZWFkeSBpbnN0YWxs
ZWQuICBJ4oCZbSBub3QgcXVpdGUgc3VyZSB5ZXQgZWl0aGVyIGV4YWN0bHkgd2hhdCB0aGUgZGlm
ZmVyZW5jZSBiZXR3ZWVuIHRoZSB0d28gaXMuICBJIHJlYWxpemUgbXkgRGVsbCBpcyAxMyB5ZWFy
cyBvbGQsIGFuZCBJIHdpbGwgd2FudCB0byBwdXJjaGFzZSBhIG11Y2ggbmV3ZXIgc2Vjb25kIGhh
bmQgbGFwdG9wIGFzIHNvb24gYXMgSeKAmXZlIHNhdmVkIGZvciBpdC4gIFRoaXMgbWlnaHQgZW5h
YmxlIG1lIHRvIGluc3RhbGwgc29tZXRoaW5nIGRpZmZlcmVudC4gIEEgZnJpZW5kbHkgcGVyc29u
IG9uIGFub3RoZXIgbGlzdCBzdWdnZXN0ZWQgdGFyY2guICBJIGFtIGJlZ2lubmluZyB0byByZXNl
YXJjaCBUYXJjaCBhbmQgd2FudCB0byBiZSByZWFkeSB0byB1c2UgaXQgc28gaWYgdGhlcmUgYXJl
IGFueSBkb2N1bWVudHMgdGhhdCB3b3VsZCBoZWxwIG1lIHVuZGVyc3RhbmQgaG93IFRhcmNoIHdv
cmtzIGFmdGVyIHRoZSBpbnN0YWxsYXRpb24sIGFuZCB3aGV0aGVyIEkgY2FuIGluc3RhbGwgaXQg
d2l0aG91dCBzaWdodCwgcGxlYXNlIHNheS4KClRoYW5rIHlvdSBmb3IgbGlzdGVuaW5nLgoKU2lt
b24KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

