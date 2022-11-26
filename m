Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEF76397A6
	for <lists+blinux-list@lfdr.de>; Sat, 26 Nov 2022 19:33:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669487629;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=emhGz65ToTeG/v6ecOkF+vxjgy7/moWgeGev/DCOWhk=;
	b=KwzsD3wxDshPKU0AhRzRVmRzfLHsgOdjt24jcV1Y7Pd35cJdLqg0dF5/YQUzBOLra4XG6b
	Hyg9hrTGMgHPK9ASm0kQekp1SQBClsP1MiOhjbkoaqnlHMRnn0IrM3Cfdu6hogIMz5SSXw
	Zm7CYBPH85Kl/WMtZ7IQaD+FNOMgsQ0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-307-gtCfkKiSNxWK9LTh2pQ3Vw-1; Sat, 26 Nov 2022 13:33:46 -0500
X-MC-Unique: gtCfkKiSNxWK9LTh2pQ3Vw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 606EF29AB40A;
	Sat, 26 Nov 2022 18:33:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 16A3B111E3E6;
	Sat, 26 Nov 2022 18:33:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BB0CD1946597;
	Sat, 26 Nov 2022 18:33:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 26 Nov 2022 19:33:27 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: Accessible front ends for Pleroma?
To: blinux-list@redhat.com
References: <mailman.1920.1669425887.6932.blinux-list@redhat.com>
 <mailman.1994.1669440416.6925.blinux-list@redhat.com>
 <mailman.1917.1669441933.6934.blinux-list@redhat.com>
 <mailman.1960.1669443853.6931.blinux-list@redhat.com>
 <mailman.2025.1669474541.6925.blinux-list@redhat.com>
 <0682623d-0de2-073d-3efa-823dbc285aec@slint.fr>
In-Reply-To: <0682623d-0de2-073d-3efa-823dbc285aec@slint.fr>
Message-ID: <mailman.2085.1669487621.6926.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VHlwbyBmaXggYmVsb3cuLi4KCkxlIDI2LzExLzIwMjIgw6AgMTk6MjcsIERpZGllciBTcGFpZXIg
YSDDqWNyaXTCoDoKPiBzbGFwdC1zcmMgLS1zZXJhcmNoCgpQbGVhc2UgcmVhZDogc2xhcHQtc3Jj
IC0tc2VhcmNoIHRvbwoKRGlkaWVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cg==

