Return-Path: <blinux-list+bncBCCIDSOV5UGBBL57WO3AMGQEDEN6WOI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FB095FA53
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2024 22:04:01 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-44ffb762db6sf68791021cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2024 13:04:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724702640; cv=pass;
        d=google.com; s=arc-20240605;
        b=fW+pWglLXUjBKhY3iruW/kDRtQpivwEJwd6eAktAMUgo91HockWVhGLzkELiIYKs8O
         XiLU4AAG3vZdcHqUAdHrDDkKrSPlui53Yat7HNThRfAq8+gYFCPgZRNWcIY+wf+iCc4w
         dkzdPkHwq/OCM52J6M9cGKhOVZL0DIXvMJIk/Fp44vJFbDIoX6LrnXqItOK3w23Ey73r
         M2gukbmsllRbFS16UTWzDOy6dMtReHjRwmQTtMwl3vpuR1xuMXdt+zGkylRAF+TFHsCd
         dVTLas5KN58sLDu1FLAr22S2NL5KKsxhkLkCrT/PUu9OlDsGXapMcZ5/XiwWFM7vWLYo
         mH7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=KRYW+hVmB73xHWllEx33LpJ3fPDxMsOTN9Lnf4YVhsE=;
        fh=FazD+fE8dH708RjjlVBXbmDJr8lMDDcm9r5M7SMi6Jg=;
        b=cwYkf2CStpOufaFXekZJYrFZaozu7o8i0krdGkf9untQILv5VPEP5l99qzgjxCX7eU
         6MxoBy5JD5FHxiH4WHmencUJSRbLhZ4xIHALbe7qITcb+Jc+Q9UAh2ehe9DcgilueaKB
         aITAAGTmHKgI8tXdb1p/63Uv6eAme7pzjj0O5l2U3SOMOhCjNdTmLSGY/VWLHbxs76wd
         /5qTRRtMHdljVB+irwRnh6McvlQT+VMoTO6Khq88rhWGFV5Dcb3roG9BCRWOgPZdkd87
         60dnrlYzyOOCy1lFUwoxjOSJADpguqP2eadi0X9czJNO/WjcQjuJmJsqJ/+/1pcMOalr
         KUDQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 173.228.157.52 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724702640; x=1725307440;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:reply-to:message-id:subject:to
         :from:date:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KRYW+hVmB73xHWllEx33LpJ3fPDxMsOTN9Lnf4YVhsE=;
        b=sXFLUsAG3pt8eLp4pg9PA/TXqY2Qj14SCAGab0p4I+nr00vOWCj1+cOZC0h34i4ivU
         jimubOH0AI15wVlUskFG7QBS9KUTqqQV9+O6Eu7rbrtQWY0AVoNCUC4v1Q2ZEesUsOj5
         n7ff+xO+8GPYgU/Br1gO2YUDCTLN6GXbzsa6UZ80w0uKA4E8oQMb847XGZFKkuGfzs6I
         ojA/t9ebVAmqDd5P6RAVWCTklcgzlGQzlM2jdRFKoaCODqVzOURJ2VxRirH5SUssGmEn
         4NbNfv1cOQtf9Es7Zw7GkZ/VuKoXkA3EuhzoIeHYaO0D6DR4bSWZQ3SPe525RUimqcbg
         Y/uA==
X-Forwarded-Encrypted: i=2; AJvYcCXzGvYhuxakEVvg7bGUU88loBj+jBYRXXqiv0Lc8glebSN518JhMzrMRYKzKRUONNn96/qoTA==@lfdr.de
X-Gm-Message-State: AOJu0YyObXxfJSYQYX9BEDkIgCrjld175KETOv7xIjyZJ755bY9R5WAr
	yyOsAN8eELMqBUo0RqZQCdtItcQpq/U3WSqoniM3IXuTWj2p/FGyKmD52UBAo7s=
X-Google-Smtp-Source: AGHT+IF0ae3PP4KqzNcSFGSQ/alazJfu7/Mi0nwlROfOVgBDd+x9vEZ55duSVZZsWL5oBLJ1nvh/Jw==
X-Received: by 2002:a05:622a:6204:b0:453:5d83:6275 with SMTP id d75a77b69052e-45509c99ba1mr119308441cf.34.1724702640147;
        Mon, 26 Aug 2024 13:04:00 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5708:0:b0:440:a6ed:f91e with SMTP id d75a77b69052e-454fc32fbd6ls57533321cf.1.-pod-prod-04-us;
 Mon, 26 Aug 2024 13:03:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU7Wf9GrLm2GJ1aObhSMlGZ2U4ys+fwQEdRAg5m0eEsOtTKEsM7Oa93+77o4qMKvBrjtiK/aoSaXAffXw==@gapps.redhat.com
X-Received: by 2002:a05:622a:4110:b0:456:469c:4479 with SMTP id d75a77b69052e-456469c44eemr82671391cf.31.1724702639088;
        Mon, 26 Aug 2024 13:03:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724702639; cv=none;
        d=google.com; s=arc-20160816;
        b=UWie1JPss2EY8FwsVMV6/4U7t25ivlqIbICLLozT/bXOURZ5q63TSrYMT0HRaY5yf8
         XchPiFbeoGbIAFdBYqDuh8asqQQFgTesCoJ9nojx0syz7H5tacm7hzRQ6Snqc963t+Vp
         Pj04X0UJIXVIzLEkpQiuO/CX7fJVAOz9uuS1ppVGKvHMFZ+HlSZoqI3oE+5RlGtRfjGk
         FkGVaxBmCV/ZrlVssOjxrXJ5+zXc9Ye6pakgiZdP07M/ffX0gZ0m/s+nU+1fbF2g4byw
         c/cVNY8JIp98g5H/1z2+GgIh6HBZ3y4U//kN2XtAd1aE1iVCaCrO/mYf5OojazhZWbRu
         1afA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:reply-to:message-id:subject:to
         :from:date:delivered-to;
        bh=oHhMLuVKt0/zQduzHcpglPwEkxEp8cjCKqvw7AfdPOg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=yPug4kS/7x3xqpzdcQ7OmTPitvvDKWlGLS6/g7HZxtzWwgsHEDVyMbORVk5rUa0EKA
         YsNT60m1oh4KnqhEJWApY5q2BOKUz4/R9aaF1/7aoRhqEOnjDjeNY/EWQhCF79gen7W1
         mMzYQ6LUIIgqSBTbdRhvG0ZMQkBcDTiUOC5MKpVqpWWf+00MEHtJBBMcanKRBEaDlc1s
         6dQ2pi2BvzJdJuRPRAlwCenmpnp+qGxBu5ZHaZ9RmYJWwfK5wDSuJP8HwUIgPeFINs0y
         DQOAbw8eY8rDhIzTqHZhVXBb4HHUcVgePX6HdUNfX1BfvsPPejgImDFanyw2rKl4hTPm
         bZbQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 173.228.157.52 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-454fe322711si107544771cf.583.2024.08.26.13.03.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 13:03:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 173.228.157.52 as permitted sender) client-ip=173.228.157.52;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-413-iSfmLSnjNKeeFQzcTYS4Pg-1; Mon,
 26 Aug 2024 16:03:57 -0400
X-MC-Unique: iSfmLSnjNKeeFQzcTYS4Pg-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D1A7E1954B01
	for <blinux-list@gapps.redhat.com>; Mon, 26 Aug 2024 20:03:56 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CB7C71955F43; Mon, 26 Aug 2024 20:03:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C8AF61956053
	for <blinux-list@redhat.com>; Mon, 26 Aug 2024 20:03:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 671761954B19
	for <blinux-list@redhat.com>; Mon, 26 Aug 2024 20:03:56 +0000 (UTC)
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com [173.228.157.52]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-287-uz8Q4LkiNBiEmZENbLRRGw-1; Mon, 26 Aug 2024 16:03:53 -0400
X-MC-Unique: uz8Q4LkiNBiEmZENbLRRGw-1
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 944C7290CD
	for <blinux-list@redhat.com>; Mon, 26 Aug 2024 15:59:08 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 8DE36290CC
	for <blinux-list@redhat.com>; Mon, 26 Aug 2024 15:59:08 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [66.8.172.150])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 63742290C0
	for <blinux-list@redhat.com>; Mon, 26 Aug 2024 15:59:05 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1sifrj-0000Ev-0H
	for blinux-list@redhat.com;
	Mon, 26 Aug 2024 09:59:03 -1000
Date: Mon, 26 Aug 2024 09:59:03 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Grants for developing accessible software
Message-ID: <20240826195903.wwlxwqjipjjxnc7k@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
MIME-Version: 1.0
X-Pobox-Relay-ID: A5ED3B60-63E5-11EF-B9E7-BF444491E1BC-04347428!pb-smtp20.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 173.228.157.52 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

Hello List,

Over the years I've posted a few times about Nama, a
terminal-based multitrack digital audio workstation.

As I understand it, Audacity, one of the most popular
GUI-based free software audio applications, is accessible to
blind users on Windows, but lacking accessibility on Linux.

Nama runs on Linux, doesn't require X11, and is accessible
without working through a GUI layer. So, it's a much smaller
software stack. 

I've reached a point where I'd like to bring other resources
into the project. I'm wondering if you're aware of sources
for grants for developing accessible software or
organizations that would be interested in supporting such
projects.

I'll appreciate any suggestions.

with my regards

Joel, Nama author



-- 
Joel Roth

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

