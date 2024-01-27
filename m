Return-Path: <blinux-list+bncBDYPVTOXSQEBBQNH2WWQMGQERSAENHA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B46183EFA4
	for <lists+blinux-list@lfdr.de>; Sat, 27 Jan 2024 20:04:37 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-42a32dff21bsf27330651cf.0
        for <lists+blinux-list@lfdr.de>; Sat, 27 Jan 2024 11:04:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706382275; cv=pass;
        d=google.com; s=arc-20160816;
        b=I8w4EBFJdmjjn96uu0fnGzZlq5QzhHbajYLzatAxdSjzc1/dHmsc2ErJ53xg+ZqEda
         zS1FTYnlDNHMIkLQZCt9DlgbDiwGK3KZsjeiyGRvzzLDgOOazX7unGjvXH9Fcn2Za4xB
         wV8/+uXwTPJorvMzRgyWlj4WIbzL/aKO/hE8KAjx0zVXva97ipEWCiAw7VQdJbyf6Uwd
         A+xISH2S7rkaIzRhByOgrWItvwvPr3tWPi1UajNIhleP6Lr/O9oa9A1e16fp6jZ3z/eq
         YDcuiIehqEQQ0sCi6veNsA4irFAX8yFE4XQFLv7XmqIKI0NqWfTPU052M6g4o2iBHuhy
         R8Jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=iJZHv5/mVm+XjlJRhXYbELm2zdS2YEIKVFLy8c/H7AI=;
        fh=/BUPVVB6eHf7q0g4Ps8L33bhJvInaqDyxspoFv3f7Y0=;
        b=ELc+d95doh0hLjWpeJ6QDjnla0fQVGQDeLzBoHejACbDZFaNiMH3bLrlZFuMM7BmLe
         xw9DGSeDwy/QKF/yyWOpsYVz/zCMJp6PpbUCUgLbdhjb9RmDfiqoxFC2P/aIX3cUWw7t
         KoFtJoGNodWVmuZtXJT3J3iYIUNHE7eLFNb4WjuSA6TanDZtO+jTdqrNcsJMCxaDF1uX
         byO2P1nWnSujIswOBdmychYHIr5RWR31tWkCxs2+t2FJnHQLAaPJ41oDXRxTv/o731H1
         UIY+0+AVXe6FjZGBczy/ejN3KETFB2aDnJDvetl0+ClG/EYif8s70gxeViL5SLbpeKVL
         7jXA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706382275; x=1706987075;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iJZHv5/mVm+XjlJRhXYbELm2zdS2YEIKVFLy8c/H7AI=;
        b=Rr8j8hB42zSIKR/xTYb47tq+RMLnwDU8MDv9BioJ24MOU/4/J8ODr7iKaC5eTzXnKo
         i/uisAEyN22wnXGrzti214ow9GovuCziMWVxufj6vDjuSTnq/jL2FCZ4Ob9wruGWqZc8
         0LIxYFLUj5p3XxVF5THmVzwF5/IoCioOW+8jucwa/faqtYp4y8Rd7L1K210Gat9m+0bE
         zl7qFsVu79TGBSQess5MDCXWv+HOC50D/IVH/Ok+cL/yCH4zyfdq396EazWmIDfGGhKT
         ib9KojNYS1sO7IOQrKadDuu7rNergfsJzj50vy9DyybWLLw1d39QjUA6qNTAo7zqW3kT
         hOfA==
X-Gm-Message-State: AOJu0YwcVjKyMQpv/DLcsAokZF5FScGyH9y7PMIkyQMnLhFMwvHLT9yb
	YfpcnNAuen9QNpZlJ6QuicxlA672ilKyROyMc+t87kjsii2nEpUczzUwBrtrK6A=
X-Google-Smtp-Source: AGHT+IEFJHnRmIYpe/1oHOchQZqWLul2NnQ112U0o1ZS/SqRnBXW/XVwk+jgI7w2goKOqWo90Ri1aA==
X-Received: by 2002:a05:622a:198a:b0:42a:8782:4da4 with SMTP id u10-20020a05622a198a00b0042a87824da4mr3586948qtc.11.1706382273622;
        Sat, 27 Jan 2024 11:04:33 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:57c4:0:b0:42a:21da:27e1 with SMTP id w4-20020ac857c4000000b0042a21da27e1ls540636qta.0.-pod-prod-09-us;
 Sat, 27 Jan 2024 11:04:32 -0800 (PST)
X-Received: by 2002:ac8:5dcc:0:b0:42a:7105:f332 with SMTP id e12-20020ac85dcc000000b0042a7105f332mr3500199qtx.102.1706382272767;
        Sat, 27 Jan 2024 11:04:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706382272; cv=none;
        d=google.com; s=arc-20160816;
        b=AohPqytYLfJpOXNoOuRaKTfDlMlH0oZPsY6avFQkGaJ/ptY08mWj2I5tnZYXufWlmf
         AXcx8+1GCmv5OBCTpgrrRtypA9prO9dVxHLdzxyGf8Pnt7zT5B4kxzsrghowObv1KwET
         xP8UsJVL9dogN+lv2r53sYzfvyVAdiDN/17qA+pDZW0OiuQXSQzqgSiGg2JAk05bII8q
         gjXLri/qumr2L/EwS2kUO3O/cYIPjwwefiQB8gWxRzCErkAU8HOKsGLwAu/hez4Ib4fK
         Z7JNfWqqdlnpMnwZ1WSL5Iv/LM5RkE58VftXovDECQaGj+jX25Mq+Tp0m58ZtW1GGr13
         0Dbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=qnIXort18l9m/bdk6z0ZtGm1S3dvQgl6D2AlJzErR1c=;
        fh=/BUPVVB6eHf7q0g4Ps8L33bhJvInaqDyxspoFv3f7Y0=;
        b=fUznkFW3ss9HmkTXUm3Vy6GvuKXQUs4Ye8qfm2WBXRJvZHWY08+/9Rb2W/epNfmJsG
         8B9C3hwTOqmU+a4fNwh2ysAMqAg7U99Cql/ZDQY0pm4yc4ildH/aktiOCuJG7BYk0vrx
         WN34zJk6m5NwSpCZFkSIzhg0mIzs9qgqEtTAZPGS43UhIlF0likfkuC+e60sz278+tGl
         fGudDlLsc3RZke8pjKXTBz+nkKnLY6IjLcQmsg6LEGfpiz0GZsMkYIinFxr6suixgL+M
         IHTr5C1K+HJRE/8daYIgZvc4mXrpwJ614YYTA23LvGS9GxKf5Z+bkS4pHT2Gg4CR90HN
         a+4g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id v16-20020a05620a441000b00783f4c37cc4si474642qkp.537.2024.01.27.11.04.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 11:04:32 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-636-CI8RfTWJMYyFUrFa9y6BMw-1; Sat,
 27 Jan 2024 14:04:31 -0500
X-MC-Unique: CI8RfTWJMYyFUrFa9y6BMw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2167138116F2
	for <blinux-list@gapps.redhat.com>; Sat, 27 Jan 2024 19:04:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1D8E52028CD4; Sat, 27 Jan 2024 19:04:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 150FB2028CD2
	for <blinux-list@redhat.com>; Sat, 27 Jan 2024 19:04:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6D9DC10726D4
	for <blinux-list@redhat.com>; Sat, 27 Jan 2024 19:04:29 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-396-Iu9eiS80ODClwLkCBd2nfg-1; Sat,
 27 Jan 2024 14:04:26 -0500
X-MC-Unique: Iu9eiS80ODClwLkCBd2nfg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4TMkWZ3dYNz17WX;
	Sat, 27 Jan 2024 14:04:26 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4TMkWZ3Gg8zcbc; Sat, 27 Jan 2024 14:04:26 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4TMkWZ3BFXzcbC;
	Sat, 27 Jan 2024 14:04:26 -0500 (EST)
Date: Sat, 27 Jan 2024 14:04:26 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Kyle <kyle@gmx.it>, 
    Linux for blind general discussion <Blinux-list@redhat.com>
Subject: Re: Something small to install Linux on.
In-Reply-To: <33681ce8-ccbb-49cc-908e-31782dd27f7d@gmx.it>
Message-ID: <c694f877-157c-ae61-8b27-25581931f25a@panix.com>
References: <A9534E5B-88A3-4F43-914B-846CF6F8E465@pipkrokodil.se> <33681ce8-ccbb-49cc-908e-31782dd27f7d@gmx.it>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
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

The raspberry pi 400 has micro hdmi port and I connect the pi to my tv for
now and bring up orca on the tv.  I intend to buy a small display with
speakers to connect to the pi that way I'm not tied to the tv.
The pi cannot be updated yet since it needs more data storage/memory
connected to it to take the updates and I have a sd card reader in my
amazon cart for that.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 25 Jan 2024, 'Kyle' via blinux-list@redhat.com wrote:

> The Raspberry Pi 400 does include wifi and bluetooth. It has the USB
> type C port for power along with two USB type A ports. You may want to
> get an inexpensive hub, as one of the ports will be needed for sound;
> the 400 has no audio jack. You will need probably at least 32GB of
> storage to run most Linux operating systems on the Raspberry Pi
> computers, as you do want some space for your files. That said, MicroSD
> cards are fairly inexpensive these days, so it won't hurt to get
> something much larger. The Raspberry Pi 4 models including the 400 are
> compatible with MicroSD cards up to 512GB.
>
> ~Kyle
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

