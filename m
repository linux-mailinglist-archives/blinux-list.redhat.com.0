Return-Path: <blinux-list+bncBDYPVTOXSQEBBC7EUGXAMGQEHFHKKWQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDA08507FE
	for <lists+blinux-list@lfdr.de>; Sun, 11 Feb 2024 08:06:53 +0100 (CET)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-604ad18981esf54294737b3.2
        for <lists+blinux-list@lfdr.de>; Sat, 10 Feb 2024 23:06:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707635212; cv=pass;
        d=google.com; s=arc-20160816;
        b=FocWVy2blYSBZXO8lOOFAnpNwfKQ6B+LwTelUc/L/1Rk53ZN06qrFPncgNJd4ujMdD
         K7xtB5WcOHS9FOu67fco3Z377h5P6aIfeIen8J+4DMmJ/G1W20HYits0Eq2zWBYTqw6J
         yb/xTinuIW6QegUvwQxhN7vjzR835pZTEjmHcBrUqDQBq1kAUYZLfLQuz6PaKs6/sE10
         9j5XAwInQoukLeYTvRzpqhgllJZ+lqeaQq57ABTl4qq8C3aJx+ND0GlBSI0vD3MaeGai
         pabbs40x006Bp/dVGwLzr7RxLDUkECayCMmXb8O1ot1GHI63V66+Th/tSNYx9z2hqtov
         MR8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=G86Il4jZAUA97i1JcO33lcphvwkr1c2b+dHqiNRq+7Y=;
        fh=Ar2hEHlZ71aLkYnpb10yleb756HBqE64qjMnXQnNdBE=;
        b=KkRfCVbRMAbrc/pbTM1Pzsw26mESDrX52LfbWJ7ptSRAHAiTekcr/2BYTWRyQ/hKdS
         nN2T0Ecgh+D0oJz2qUTDVEnFATULKm1fbnBgprMXQnyFN75pZ59gq0uN71WJyUHdj1FB
         DO6CJvPi+kPSak1xLbv/uS/O+n0T7iSRvj8xnqa0NCghEk6DrWP1yb1l5dnLDiWFwEGu
         rvnUf3iPDgxfpoyP468Y3Uz9PnOLjwnMVtH4TgrTsaWKW0fdZIagZxW/X+RZ0DkN9O/Y
         cOKOK3ouWHgyry92p7IWenPAM37/CQ+ECZGSufGPYNuIpBQ/EBbN/4sxVqaQ4Zid7KgP
         I9RQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707635212; x=1708240012;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G86Il4jZAUA97i1JcO33lcphvwkr1c2b+dHqiNRq+7Y=;
        b=c0EK8AS6InNxGmyVApM8LKpky4Coae+7uoc0w1LsROJ3Yuw+qRPDZdXmefQ1FPJYZv
         LuH/7THQ+UV1YPIuU79cH/Fzb+yKgt+3yaxec0+y6mPjifqoiiHaT8cZZYdpsA76dx+A
         v5oZ68FC9BurHZ4rvp3etRc65hdwzTWDE4Q772yL5SDHtYfFTItXRAP24SpQ07cyokgL
         U1v4MBPwB6gQsD8qjr7tNTnE6IvGzedVHrD1zBOVJN7U/8HuzdU43Q/YkIYXUTt2s2aN
         53n2U3pg7B8xSzyFV+rj4u2ZhHfKgAZbkiclNCadwrIIwDZyAXpEbEEmeC+sgY7rhobb
         KxhA==
X-Forwarded-Encrypted: i=2; AJvYcCWxVSMV0RKtSWXXFVOxWrPAbNPj2juJOAo/ZCUzgDw4r3Niad0U4LorAlYGKUmlE6UNnfSBNfeCpNcPNUhIZT0YzTSEidmvvKKv
X-Gm-Message-State: AOJu0Yy825MkBf9UmiMyjTZPcaMf5a2VmprzRcWXomsIi9VBkdK8vGOW
	py3MHJP53MNrqqdzNhZEYQEo9uE4bLj/nZFUJPoQCDVs9+BXExvgSgHsVnNulRY=
X-Google-Smtp-Source: AGHT+IEQ7T7XwBFUqgHICdGUJIQtC9IXiyYrtCgJDrMWnSLHT3/ItMaRrXbcSqyHCCGpzg0oiRx8fg==
X-Received: by 2002:a05:6902:1b8d:b0:dbf:15a:c9e4 with SMTP id ei13-20020a0569021b8d00b00dbf015ac9e4mr3392464ybb.48.1707635211684;
        Sat, 10 Feb 2024 23:06:51 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1d05:b0:68c:e237:ade1 with SMTP id
 e5-20020a0562141d0500b0068ce237ade1ls1864149qvd.0.-pod-prod-06-us; Sat, 10
 Feb 2024 23:06:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXADYe15RGv6jC3dNPSrrbWqXLO7JeKR+M8SRw5//iMu686Kx12gc+mmwLN4GVwY+30wuvDyIJYkRpFReSp60YyG1/LwqS+0M7EZ3DU
X-Received: by 2002:a05:622a:1212:b0:42a:9aa9:2d2c with SMTP id y18-20020a05622a121200b0042a9aa92d2cmr5077811qtx.64.1707635210763;
        Sat, 10 Feb 2024 23:06:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707635210; cv=none;
        d=google.com; s=arc-20160816;
        b=z8UjNgfkUVBQ8TGSYi7gsUGCRa89VWWTfSAaOdQPdENXUBGVP6BsVkiRVsRKM0u4qd
         KNqFA/IxCoEEGJMZCtEAm4EQ1WnBuVaYS/9ILkwU1KdkLT0kue3M2bUdfZsrqdCA5fkz
         bBXDTEZ5fm9kE6mJXkXgRmmCA/w7cGMxNLi8Ejo7rTJHVT5gux8dNaicg2UeJQE3XYTK
         j4b/75SoPD674l4MCtcU51ECjdv+CE6C8Un/dR3ei4fzWVMsIJImOzvNSUaYAP1jBC+9
         zyKiaEPPIx1TPxcj51gdP+RyragAzW21JICe/8yjFoErLoor78xvQma0TBMmKAe/Rcgr
         OY0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=XXkQ68rBOAeNp+FvGVa0drJntGdLP5TpB1SlmOH7A2k=;
        fh=5uSrG3v0abOcmbX2WfwemEPazBeXIU+XmODCqqm3UAY=;
        b=WkiRo2G2tDWQgdbWk7HgG504fvTmN1iHUeUYpWBn2A+TQ2gd2p4O/24GWzUpk7wgus
         hwNmeYE0RQvNhjDmVbAsnO714VIny2AEEUD7ucqbGjL09Dk86hAJDC0yB22lR5L/nOnl
         tg/m8es5QJrz8Ebjb/BfnlQtvD6RWNaqyhVILE/83kit/hqx9O8KYQfwdVIqe10ViQiV
         Ag/d0UmuWV0A7kiwyTjT1uXuJ8yLX+7ka5ydjpBqyJilIPCtO5PVUGQk6OyfvoBfYgo8
         yVWYlLtfCV9MnFEJATR5hE/IevM0SoESgGkvLFtY/8iiNcRuuHPDi8Umw1G8xq9/OUcg
         ox7w==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Forwarded-Encrypted: i=1; AJvYcCVYGHkPQUaOna6IOwFjtdwFnDD6DzMucd3LDVl34YhZ+P1FGzYXkbsWdtap6KVGAlszoCjlI21rTPbqajt+khMRJIWluFKfvkf86pNg
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id x10-20020ac84a0a000000b0042c74bcb327si330459qtq.737.2024.02.10.23.06.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Feb 2024 23:06:50 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-390-M3GxG-XTPkGFi1TSqilZgA-1; Sun,
 11 Feb 2024 02:06:49 -0500
X-MC-Unique: M3GxG-XTPkGFi1TSqilZgA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18C6F28EC105
	for <blinux-list@gapps.redhat.com>; Sun, 11 Feb 2024 07:06:49 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1557C112132A; Sun, 11 Feb 2024 07:06:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA24D1121306
	for <blinux-list@redhat.com>; Sun, 11 Feb 2024 07:06:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 37023101A52A
	for <blinux-list@redhat.com>; Sun, 11 Feb 2024 07:06:48 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-477-CVmuhHm4PAKQG1S97Xblww-1; Sun,
 11 Feb 2024 02:06:46 -0500
X-MC-Unique: CVmuhHm4PAKQG1S97Xblww-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4TXdtZ0GQgzL68
	for <blinux-list@redhat.com>; Sun, 11 Feb 2024 02:06:46 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4TXdtY75Syzcbc; Sun, 11 Feb 2024 02:06:45 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4TXdtY70shzcbC
	for <blinux-list@redhat.com>; Sun, 11 Feb 2024 02:06:45 -0500 (EST)
Date: Sun, 11 Feb 2024 02:06:45 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: not yet done
Message-ID: <4f392189-5fe5-57fc-2794-2cfd346bfe8c@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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

This might be a lucrative project for anyone that succeeds.  When a file
doesn't match any checksum stored after the file was created, do binary
patching on the file until the file matches the expected checksum.
A utility that can do that so long as an organization has checksums saved
securely could really make ransomware and malware actors lives miserable.
I didn't get involved with binary programming earlier in life but for the
ones able to do it I think this would be a widely beneficial project.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

