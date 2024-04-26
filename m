Return-Path: <blinux-list+bncBDYPVTOXSQEBBQNZWCYQMGQESTAEAWA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0048B411A
	for <lists+blinux-list@lfdr.de>; Fri, 26 Apr 2024 23:29:39 +0200 (CEST)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-6ebc3864709sf3294171a34.1
        for <lists+blinux-list@lfdr.de>; Fri, 26 Apr 2024 14:29:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714166978; cv=pass;
        d=google.com; s=arc-20160816;
        b=l4a+oRYvq+ofm43MMpOE2Eu+h8S2kEyv966CHB4NYYwPEn4NdOpqfziajeTgOexap7
         QX1H8ImmWathV0HyQ299hxYOFWjvIyjtLsP/TS9uHooymm56AjxiN+EWjuO1V8gUOswI
         vQ9ih44aj206BIayhypcRUXlUyOJ1fSV+fGgpfsuVSaB2Tu0ayGjPdcCa4v9/3/dsYK8
         8Q0Sj8paVn1Z2fc5KmmBlbykmoFCtJIsu60b12IDr6ZWjFd+09g2X5tbGsJ//jRugA2C
         03NdG7vlufSbzfsBpPLgVZKwQbaUE6FmFJkcHPosgrLW7FgMrdEQDfkmuy+hsmuZObSI
         5txg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=vuW9vwZVnyJdmGEDFrniKsC3DGxhaJba2yYtZnM0d7M=;
        fh=Dv8W7o5bNS3GLWekF0knxWQqE96xZctYvgv0kdzc2bo=;
        b=XXQCm4slatuiM4ebmo5bFCW2rhvp55ZWSuHxsXVJdBukT/hd5WqnwfMau0Xtp0GycT
         7qxgQaks/MMXRHzAvWf49IEjJQjq59NMHvod4mYzG37tnExD7PaLH04awsFOeHYU8gs8
         ynlEYmqPzaBvC5h5ezC8Xa93ntS6txYdsF55kHPkKBkenSon1mfB6jNKsXFKuSlNL9H/
         JMW5E0Q1ejoY+oUPa8BAgvfAtKaICPvb1tlv4UweQzgvWP6UvvHFAw1cUUlGuozKJ4+/
         cBpK38yt+KJuz5WFs/H+fxPhy5onfCVGqKMeDcbB07w5rrSo7IQVKia9SF47TWjQVk5I
         8sfw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714166978; x=1714771778;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vuW9vwZVnyJdmGEDFrniKsC3DGxhaJba2yYtZnM0d7M=;
        b=Ts16KI9BFj+Dklo1ZeTdwKHLOHyx1csJLOh3DL4acQfgXQz6N680mMekhxKRKT3MFS
         yKS3LZVkIgQZDNFqz0ef/kj1i4YeqOKRkPvXxdbojEzVoTmfAO1vvfMXQMceu0fnpkSf
         y8x1SLANwkYrE/zoEjbWTRNVJb6cW9irSN8EhYOZbGU2jHU4HyJ1V060xNv7l0J+NStv
         hDWAIC0vNMmoKocp2ld/YvmFMbcDNK9HeuhECM7HofnNdbEdDzzYd/6VqaZdDc1He/4/
         nqnHpa9hZ9zAQJkkfsTUUIUxNKvQ65l5mdr6mdkWVV4NcfTyh/rbaj4AO/F5CuYNBuRJ
         8Ntg==
X-Forwarded-Encrypted: i=2; AJvYcCWCyQm34AZ2G9e8uHO5jbYC16OgGz+EYaBbo4FGvnoUZcL8yjTwdbYKeXqJwAnmkyfSEi4cPCx7sNkpoKowkmqwfKkg0fWd5GhY
X-Gm-Message-State: AOJu0Yx49d6PqRoQ9jPWGxa86FsLURIULOVnH2K0E/roPSR3iF870kjz
	87IvFlnGL55IvKL/hTLNsMozF9tArH1Trr9ZiSFUgP6NvbNdZeegwAM4JqA9QTg=
X-Google-Smtp-Source: AGHT+IE9o6vlepiVUS3ZUUk/t+HlrFLJchnvWNWC6VQRxTCUkfFGH7chw9c/wAaVf9jfII1ThNluKA==
X-Received: by 2002:a05:6870:200a:b0:22e:df68:ee7a with SMTP id o10-20020a056870200a00b0022edf68ee7amr4240900oab.42.1714166977854;
        Fri, 26 Apr 2024 14:29:37 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:3382:b0:239:8e26:192 with SMTP id
 586e51a60fabf-23b422f4234ls730046fac.2.-pod-prod-06-us; Fri, 26 Apr 2024
 14:29:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVwPdeBjPr3rCdQsSLVsxp6YVjhClEB5dhmsUWvgxza4q/7Y84/7E3ybat+8ukK6rISpXO1k4E0Cx4/WuxEgXmpgvqWLeE+itORbPZ2
X-Received: by 2002:a05:6358:8511:b0:17f:729a:8562 with SMTP id n17-20020a056358851100b0017f729a8562mr4848613rwk.3.1714166977103;
        Fri, 26 Apr 2024 14:29:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714166977; cv=none;
        d=google.com; s=arc-20160816;
        b=WRvs+6//JOkigUrZoBJEWXCLsDfXqdBXhv+Tbi2HIDYVp8jxKzVnca3NXutzElxGAE
         BKugHmeiF8ItvwKUDUybR2YzUyfs0Y4HNzEGf29ExdF0FGu1TUfIK6DzLP6Sd+6c+01X
         QKYcUA47rec0ANkZ4+YoQSjI+QUfcAoLKxOO31A1NZFERllCK20/+JgTqErDe8pu2zPc
         wU2U9y/Vm5p9Pst6LU4BdTKsJ7S3rCPCANu5mFPl9MYnQp0KgYeyiczdSTJiQ+z5pxlz
         tjKc0vlzGPh3BABbFdpFMhpn8QD/J6Wo8KUzkYQKLIXX1Y4MgQxQOHr7xC+Se5WZ2AyG
         F47g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=5VaRS+i1aQUK+upWGn/uFXgjkc9/GYXsqAjgjR90n+E=;
        fh=NhiRoa9rZUAIiJwAv2FkydQH/haDkjxHQo01K7zuU4o=;
        b=t/CYTU7TZkBIKdwQ4J4EwlisjrjJu711iN5+EazbFWsTMOqPrSRChO07Ww36iZL/ni
         MF/xPneb3K/sFQQhhXlpwdth85ujxWfeYUc3fnNim+OeytJ9XwscJZ7+V3gxpHqiP/nm
         LNvqnA+YxPiIoKAY316Mue/wRiwVKTNkd6ynBBxq4GEnWxrvYgK7jP1+022c/YC72WBA
         +5XD5zWN/S/93YqQBkBSpXQ/s/Iqs/lhlNWHcDlmqhe30YhQzDZixd4pPHiFx9RkEWVB
         fr0HD/NCZmO4HpYcnso/rBOcib03zkxxYqE19aeah4bADX39Cfv0eZ/DDF8Dq6voVHJ3
         nhjg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ge15-20020a05621427cf00b006a0b6a939cesi888579qvb.65.2024.04.26.14.29.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 14:29:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-628-tJNX3R8XMISPK8lmFeZwww-1; Fri, 26 Apr 2024 17:29:35 -0400
X-MC-Unique: tJNX3R8XMISPK8lmFeZwww-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7617F804C61
	for <blinux-list@gapps.redhat.com>; Fri, 26 Apr 2024 21:29:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 731D0C13FA3; Fri, 26 Apr 2024 21:29:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A832C01595
	for <blinux-list@redhat.com>; Fri, 26 Apr 2024 21:29:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D6F8F29AA3B8
	for <blinux-list@redhat.com>; Fri, 26 Apr 2024 21:29:34 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-691-ddMRKUZEPZ6lLsX5SDf_7w-1; Fri,
 26 Apr 2024 17:29:33 -0400
X-MC-Unique: ddMRKUZEPZ6lLsX5SDf_7w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VR5TM63kTzrQn;
	Fri, 26 Apr 2024 17:29:27 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VR5TM5vLPzcbc; Fri, 26 Apr 2024 17:29:27 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VR5TM5tmdzcbV;
	Fri, 26 Apr 2024 17:29:27 -0400 (EDT)
Date: Fri, 26 Apr 2024 17:29:27 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Daniel Crone <dcrone215@gmail.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: folder containing orca
In-Reply-To: <7F1BA135-FC08-4486-9461-F6E6DDCFD207@gmail.com>
Message-ID: <af4574db-805e-5466-6ba9-b2a912ed83d0@panix.com>
References: <7F1BA135-FC08-4486-9461-F6E6DDCFD207@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
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

Probably something like /usr/share/liblouis/ ...
liblouis is its own program not part of orca.


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Fri, 26 Apr 2024, Daniel Crone wrote:

> Which folder would contain orca?
> I will go in it, and try modifying a Liblouis table, adding contractions.
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

