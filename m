Return-Path: <blinux-list+bncBD6J3OOK2IIBBM7YYW3QMGQE6T6AHQI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABEC97ED33
	for <lists+blinux-list@lfdr.de>; Mon, 23 Sep 2024 16:33:25 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4582a549257sf79773391cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 23 Sep 2024 07:33:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727102004; cv=pass;
        d=google.com; s=arc-20240605;
        b=I8qECKzqQaqWeEOlUBNH5BFqzpXGpfbtnnRleQe3zHBmJeti/MpEt7/WB6Aaqs1ay5
         28zhneOFUiJZUotJkvOzASFOpfRQrOBcIZSXWVtpKOMpsGi2aFNjCGVstgvoRSIUIOb/
         5d5b0q9YaaayrNQ33rBK6CAI5zkDH2BLlMfw5p8NRhQZU1fPtclxcUm/o6XROQkhh/8+
         ZUPZgPpWfskDG4zJUEOFtzOcTG7w06YQGnxbxVvb6hGqXmBCw+lg4GImlWv/CdvgZCas
         SLdofCqPx6qKH+njbvK6Lz4qaGvhxmo8VxXn6ABDQdczZj1jspSXLDzndtxfG/VRk5ii
         OXlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=SP7S9nwKkk9uKoQlSaHgOnAT55JN1Y2OrvLmuzEkV8k=;
        fh=SEJrz4DZw9M8XHxR3O4PMmDF/4IVkdb7Nr2NwQ+EX1w=;
        b=dv0O3dd7fdjVrBJCYUVeZxNT/xqzSwkWjArq3NgA9bzi8LQtmeFLjwXAWvvmUN06yu
         qi252nf/p7TvTrIcBnxd2wgyewfFu88qqc0T6EfBC4bEKJPN14IxgXSm2++bquDuBdah
         RSqXLLk7uFVPWXaVbRT8oNyJLDRQE+x+jwQj82+jI/zQhREPorHb4aCNplDoTbvPCghG
         TVym4qxw/4GkQMIflIn62YcFeUc9u6e0mGukqcKzGdmcXt9W65GZxEJlPs7xOkn3Cpul
         U29RhL/8q//LSqerrsU1bcuXKS4WakkTjRdaqnQWepyDuDvHExjqOFNhfeKz8RC7Fntn
         4lpw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727102004; x=1727706804;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SP7S9nwKkk9uKoQlSaHgOnAT55JN1Y2OrvLmuzEkV8k=;
        b=I53TkODT3asPT1BgQBAOgNFmBOa1OesW7cFih2+M2AXKVOOp+AqmH70gYHrX3dEnB+
         FAVDGjbMybx6ttgm8QAm5U4KB5clFzb/WVMOMI8TVC87DrhhTfbfn5LM5DtXCLotEU0z
         +GB/BcpV8/N79LQkf8CqhKRfW3H0ZOq33qx/4XIp2Mpo9WqRnrtV8LO4gTN3y8LXIXt6
         CbpGyp/W72bTqjLLeXs6uXkRUVkpt/iyZjO9xQwdw7T8hErcnR+HiLI5XuRbAeLcvxNk
         77rwkvR8OENZjU55mSYc+AQObaWHf8JPU6gbBoOsFKJbYaonL0fDv9tMgPWGYgFpvR2i
         CnyA==
X-Forwarded-Encrypted: i=2; AJvYcCXEl7YM8+p8XPqyjnNv/2hpULnGoMYAx4sIZak9bzOMHSTUx8MvJzAHi1TsyFVZBLY285Z7Ew==@lfdr.de
X-Gm-Message-State: AOJu0Yxx57cpIp5mawcmGEYUQ5FhSLv/yxjSxGmQtGTVuJRZcv7v2DKU
	dzdw+db63ZNRPX2ruMWyhsnWHq7Z74tldcDut2FTJNlmtBNlTYJI/tfzWOEGjGM=
X-Google-Smtp-Source: AGHT+IHpJSMGjlQpLzQFYkJGQVgH6Nn3+S7xMLYkakku1zHg+qjQVo7ecD82q4v3O/86bAOhZI+nbQ==
X-Received: by 2002:ac8:5990:0:b0:458:2334:b8d1 with SMTP id d75a77b69052e-45b205020e3mr195643331cf.32.1727102003422;
        Mon, 23 Sep 2024 07:33:23 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:11c8:b0:458:2573:849d with SMTP id
 d75a77b69052e-45b16695781ls63466701cf.1.-pod-prod-02-us; Mon, 23 Sep 2024
 07:33:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUNL6pjBtH9lMJm4Fzm4TutisKL/Ou4bFciUuk5l5MLMVWTaFLmecqR8lV6Lx8cl6d9LKQFNN2bjk+dtA==@gapps.redhat.com
X-Received: by 2002:a05:620a:46ab:b0:7a9:b4d2:9d69 with SMTP id af79cd13be357-7acb7ff8173mr2042769285a.0.1727102002479;
        Mon, 23 Sep 2024 07:33:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727102002; cv=none;
        d=google.com; s=arc-20240605;
        b=WA3BpiG8opVIPBihjC0cjJLb7I4ckzgX0zqQHS+jpwCuDfEvszZBwrmfx9icK6XVSj
         Qa6kDn6yczCoNEta52UM1D8qenXJ16i3kCQ5zB9gifKFgSzait6orgbszC1Hbytfa589
         KnLkjA9lqDwA7R1kjJA4z5/qRnMObXV58qNJYJwXr+Hyf+ZbQvSPJyIJdJAK5slcfo9g
         cPTbhmUyYAgnK5YRuOk7Zc7QFF/w2f0NrhtThSJZ2GfaCmdmcr7zudOy96rwBDP+BKGH
         PyIwwrp7rB+yZ46cc4NxNs3TmmWYZGi8TcdMogA1Eod6TvX/3n6lmrpkFoyAwt8TA/X8
         0v+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=o73GQcek2+HZYewIFwYroV6/eBIEe3p2ygLaMj0FgBw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=CsVYzSr3rBBve1LZsa79IZya6Ik8aWEeayU81XK7aRojKkGG97bBLc204zhJjZ56A6
         Flwf0d6rjHUv5nBZ/F6E86HwRrSoosUi0XuX7xVHFqXqLGcgGyKS/FIiQRgmkGIAwY5w
         FzHuIIXCKHe8lHemY7ktf+QG06ik6PXlc+wEC16N5Upx17KbwdWsYU7iHHUQ6eqk8apC
         vKPEaDQBWpRC9HnvUeW4lNyNMtSAYByZN+01XgIK0IWvSIj9H0WkfeaSG9JLoe611OFf
         1fLD5QsooxRV3VlsjO0PYkt1QqxJxs0SNuPrBrYVuBH66Fj/Rg57nGCdXBRKIIIrEo/D
         TPdA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7acb07fb174si1083923785a.58.2024.09.23.07.33.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 07:33:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-621-mGzwgOlHOtyxt9Svn6JnLQ-1; Mon,
 23 Sep 2024 10:33:20 -0400
X-MC-Unique: mGzwgOlHOtyxt9Svn6JnLQ-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2922719B9AB3
	for <blinux-list@gapps.redhat.com>; Mon, 23 Sep 2024 14:33:20 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 26F581955D42; Mon, 23 Sep 2024 14:33:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 247CB1956060
	for <blinux-list@redhat.com>; Mon, 23 Sep 2024 14:33:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5EB2319B9AB3
	for <blinux-list@redhat.com>; Mon, 23 Sep 2024 14:33:19 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-19-YViR4oa4Nt6JKa9gpZhY7Q-1; Mon,
 23 Sep 2024 10:33:17 -0400
X-MC-Unique: YViR4oa4Nt6JKa9gpZhY7Q-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Mi2O1-1sEzb00aX3-00e64w for
 <blinux-list@redhat.com>; Mon, 23 Sep 2024 16:33:15 +0200
Message-ID: <20240923.143314.461.43@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: Drives dropping offline
Date: Mon, 23 Sep 2024 09:33:14 -0500
MIME-Version: 1.0
In-Reply-To: <ZvF2WzjFaqSQkGgw@thechases.com>
References: <20240923.133713.763.40@[192.168.1.100]>
	<ZvF2WzjFaqSQkGgw@thechases.com>
User-Agent: POP Peeper Pro (5.5.3.0)
X-Provags-ID: V03:K1:93YD/+Iek48co9sYILylEjqkRNzgeI/Ry+vWr/VD1Boi+qc2lCw
 OteAPXfpEMJF8ZGFFww7xRU+uRRV9hr4NyGk7Btgbon3o1bYcLDA0MAtOQSTK/PEUnux4XF
 0mNWyxdtvvgnW5mus5+D8mfk5tWqvOZ9aUm/odcFZw0fdGqk0EK+kjst8M5c6y7i7uo8XPJ
 QKGFDJqmMBpYEFYmkFLag==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:hfURo976RNA=;aTOPdjDxLjNos3Wle9G0O6lJl+1
 SI5pyUSkGoUET3G7VSOngEI6csBJpddU44sd/RHScyfxr7flry/aVmgcmLoy6eQA2mdnt4dh7
 8XF2+ys7KIUseLYaAUPN01J3z0DvkksplY270+mDfPPd1Im8WlQC8nzH+TWfia8j55MHfYdUN
 IBjTXq8oWBzMVMKWKmw+s9wIsJLMO0bdSZQjIDhXRKdzh76jduvJ1b7Uass05y/C7R8Y1OQOM
 uvSQ8Ftxxp7TE/JIt6wt0qOgKlvfZ8Wogg2a+6ap2XvfwTgx3XE/kWNjPZBpnl6PB15ClV8fC
 Ny+6DxBc0a0GfslmLAJiCnyJKPurD/cphdCjcXl9HyN/s7mdoyYOC5cNHaF+xkgn6IPnHVNIZ
 2y8KLu7ShKMiozYBpaTQXKv+9K5f3VlwlYDPi1w7J16lEcq2YwTzjaj0bnrsyoVwOJoAOAj5n
 TdUSP/CYUboMlTDRBfRIHofQUWAyuG6OIWHvSmh92JGyc//26SIJVTI7+ljCC2Uvyc41Hnpgl
 ugn0BeyvY6VyWf4L2VS9S/QEfH/v2WZ5BMGdAgnBf9Rm1LUA+8zzs7d9WBTae/TTEqBd2u7I2
 /R3byUsjPXa4zi60bUrcpvrT859qulXxh95gu/DVxUvLUS8IAE3bgYeOpeZ4BhU3ePlBai3k+
 XA1vLOuTWlJA9wMRKXwhSZlhb9aCj1D8xxPW4+UBvXceGUekWQALWekNVo0KE4PlkLNQg8e8F
 udSNoM5URIYkqedw35X3T+ssQq0foZl+brcHhitvG857Wdm0DMtFdemtrXf5Ianq25geJFIpA
 LBHGvEP4u4ELh/eap7y2QKfxc0yWOnxqapyPkekGv+JjI=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

As I indicated in my message, I swapped the drives to an external power supply to make sure it wasn't a power issue, and also as I indicated, they're all sata. And further, as I also mentioned, there's no real pattern,
I'm thinking it might be the PCI sata card I have, it's getting old I think, but I wanted thoughts here before dropping another 150 dollars for a new controller.
----- Original Message -----
From: Tim Chase <blinux.list@thechases.com>
To: blinux-list@redhat.com
Date: Mon, 23 Sep 2024 09:08:27 -0500
Subject: Re: Drives dropping offline

> On 2024-09-23, 'Rob Hudson' wrote:
> > I run a small data server with about 9 drives attached.
> > Every so often, one of them will just ... drop offline, with no
> > warning
>
> My gut says this feels like a hardware issue.
>
> Are they all attached via SATA or are some connected via flakier
> methods?  (glares sternly at USB-connected drives)
>
> Is there any pattern to which drive(s) drop(s) offline?
>
> Or to which connector it's attached to?
>
> Have you verified that your power-supply can provide sufficient
> juice to run the drives and whatever other hardware demands you
> have if they're all drawing their peak wattage? (graphics card,
> CPU, RAM, USB charging, etc)
>
> -tim
>
>
>
>
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

