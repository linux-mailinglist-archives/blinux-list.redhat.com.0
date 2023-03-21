Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD3B6C3074
	for <lists+blinux-list@lfdr.de>; Tue, 21 Mar 2023 12:32:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679398331;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dTf4S5bj2IhQuxiYpHO7TF2EyTX3frExn2OsQUs8u7g=;
	b=HThS41xITJIVQplDge9Z/HO6Y99zF25RKtT4GVGw6sMUtcaTfi12xA3bvaZTI3OCU9Usyk
	JEdEGYtdNqIYUbs0HlhvoT8pkg0v+qP+UGSBWXyQuoxHKvXulBE6BsC+Wxy0ASakqPbGnK
	j2qtrQRiWP5yUemMdX6Vvtc+mSjqo/o=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-57-5yfRLhirNxWiEHtRtSxiQQ-1; Tue, 21 Mar 2023 07:32:09 -0400
X-MC-Unique: 5yfRLhirNxWiEHtRtSxiQQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F13AF101A54F;
	Tue, 21 Mar 2023 11:32:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1F1972027047;
	Tue, 21 Mar 2023 11:32:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EDAD819465B6;
	Tue, 21 Mar 2023 11:31:59 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 21 Mar 2023 12:33:32 +0100
MIME-Version: 1.0
Subject: Re: alpine linux
To: blinux-list@redhat.com
References: <mailman.609.1679395599.636362.blinux-list@redhat.com>
In-Reply-To: <mailman.609.1679395599.636362.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:8gL0smX0jPc=;m5XosHgy4ZhykGjFd8q6/CzMoeG
 TgUEg+uuVQj9Zl7qYIKSZDu89mYTFZOHv/P4nNLEWvuHiqXHxb9JtFAfAudphDfF3vI0Qn/Cx
 WGRrYrlB5vOYB/4wyHeNqH+Oz3JDJY2h+6WBRACa+kDjdOg6GrrT2L0s399O2LJSR0puLsOwF
 EdzzIgIsbJP/50Y7jlH/NnYAySNX/Ny+Lc3SOEVILXyePg9j/mb//TUAg4c5u509Y5OkrNrIc
 aFtZu+IKgNPCNOCkqfcVDAl0wb2eCxdZx3CmNUa7m3JhvSRkuP8CJqK4sUs62kImtx/T3a4F7
 m3/1UVm+loG/raZamJuNm5bReC1NAGtRNoCmimxfK+l11mC/bGtrGwc6gzuMHJanu+V8l9/AZ
 u+RCkiwYZsyF9Pv/N57YU3Uu3/8eWaxnaiuiOZ+uC3l61XpzmPhTId/z77RP1h6QL8ff/er2i
 GhlTp0gSMiHWo4Oxyz86F/UF2yLOUoeDDwTNtPLsmrRdA0jD2aCxSvyS5nAyR4p7FFaSIVUvP
 jXuUJvMKKzQGDCTRhBA5bJ9STUyNhJuTSNVOEaYVmUl4uUGLm+LE+qijtDzCQjIl0junOuzub
 BDv+tTh6AnOSIwOyaJlIcOp/G6DgPk2ty2C6UaoMhyqq0sNcWRKzC4H3dbtUDS7Ik7rUT12Tn
 gs+zuub/IeMWQtbUfD/cm8iXfu7NDmJc8ULNs9rKYhKqtVW4Ex2LX7Yrhtv5aCm6WGbuZImKU
 uDNXdf1cy/M8IxuJ0MaCGY6kQaCq0/JPjvp44v0EcsBrqUeygESN/PC8ApYOUbP6Nv0u//483
 VrBVrQaotTw7bgMaDBY34rM0i4IcnAsmWJLTzPnSSXopg3bFZNvTtBePUwIlELRh1X/GfSSE1
 urAa9Bf8hEU2VgzbIlVdyn9utn060l3RFxHtJehqmWPgDSeN0ihqu1tiTNLcc4h1TtK276ou1
 KJhWpcj/ypK++PafTFKqt3ycMyI=
Message-ID: <mailman.518.1679398319.636361.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 3/21/23 11:46, Linux for blind general discussion wrote:
> So I have been trying to work on ways of getting accessibility into
> alpine linux. Maybe someone can answer this strange issue for me. When
> loading the alpine iso on my laptop i had the idea to install alpine
> over ssh. I have a connection to the internet because I can add packages
> through apk witch is the package manager in alpine. When I tryed to put
> dropbear on for ssh the laptop is not showing up on my network despite
> being hardwired.
>

If by "show up on the network", you mean "is not accessible through SSH"
it might be because the service might need to be started.

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

