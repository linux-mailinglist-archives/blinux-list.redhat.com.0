Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F23858AEFD
	for <lists+blinux-list@lfdr.de>; Fri,  5 Aug 2022 19:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659721129;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WXCsj3zLty0Qx0jS284/vUEs2+OLMCZExVu/DphXOQg=;
	b=Py0m21EIq/7CGC4VaIJc57QlOqB/fLmF+xomH81/MdpiZlZM+fRPqoQ8d/PM2lgj5Qgvi/
	laujdGryD929fgMox6RvWsVg13cSTcOf6rdzizY91mZljgxSiS7V+BR/YlgHm5WccWP6MD
	6fN9OihwqYIzlxgOR1yT39e+lZ4NgxM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-339-orEG74CtP3upjsoa2ltm8w-1; Fri, 05 Aug 2022 13:38:45 -0400
X-MC-Unique: orEG74CtP3upjsoa2ltm8w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C2EA85A581;
	Fri,  5 Aug 2022 17:38:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3BA5B1415123;
	Fri,  5 Aug 2022 17:38:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BC0A1193F6DD;
	Fri,  5 Aug 2022 17:38:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.1366.1659635417.2505309.blinux-list@redhat.com>
In-Reply-To: <mailman.1366.1659635417.2505309.blinux-list@redhat.com>
Date: Fri, 5 Aug 2022 10:37:53 -0700
Subject: Re: Cant require password at log on
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.39795.1659721113.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBdWcgNCwgMjAyMiBhdCAxMDo1MCBBTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgoKPiBEZWFyIExpc3QsCj4gSSBpbnN0YWxsZWQgTGludXggTWludCBN
YXRlIDIxLgo+IEF0IGluc3RhbGxhdGlvbiwgSSBjaG9zZSBhdXRvbWF0aWMgc2lnbiBpbi4KPiBO
b3cgSSB3YW50IHRvIGNoYW5nZSBpdCB0byByZXF1aXJlIG15IHBhc3N3b3JkIHRvIGxvZyBpbi4K
Pgo+IEkgY2Fu4oCZdCBzZWVtIHRvIGRvIGl0LiBBbnkgc3VnZ2VzdGlvbnM/Cj4KPiBUaGFua3Ms
Cj4gUm9iCj4KCk9uIGh0dHBzOi8vZHVja2R1Y2tnby5jb20gSSBzZWFyY2hlZCBmb3IgImxpbnV4
IG1pbnQgZGlzYWJsZSBhdXRvbWF0aWMKbG9naW4iIGFuZCBnb3QgdGhlc2U6Cmh0dHBzOi8vbGlu
dXhoaW50LmNvbS9lbmFibGUtYXV0by1sb2dpbi1vbi1ib290LWxpbnV4LW1pbnQvCmh0dHBzOi8v
ZnJhbWVib3h4aW5kb3JlLmNvbS9saW51eC9ob3ctZG8taS1kaXNhYmxlLWF1dG8tbG9naW4taW4t
bGludXgtbWludC5odG1sCgpJZiB5b3Ugd2FudCB0byBtYW51YWxseSBlZGl0IGZpbGVzOgpodHRw
czovL3VuaXguc3RhY2tleGNoYW5nZS5jb20vcXVlc3Rpb25zLzQ1NTczL2hvdy10by1kaXNhYmxl
LWF1dG8tbG9naW4taW4tbGludXgtbWludAoKWW9zaGlvCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QK

