Return-Path: <blinux-list+bncBDYPVTOXSQEBBL57322QMGQERJDZZSA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 947E094DDB9
	for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 19:13:21 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5d5ffdc9ed9sf3206841eaf.0
        for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 10:13:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723310000; cv=pass;
        d=google.com; s=arc-20160816;
        b=RKHqbrqjIVgntBaAn5f0lFUvpBDWjrkIZBRQ1Ql2cxG/YFi3spWnQznpi073oqhINO
         fI1Z+dJX2NioHp+fharGXj+MpbET36LHhAPZPxAQJlK7k1e4SE2kRx65HOQjBfoqTbHw
         KZ1ikFNbSsI0b8fzkMg+Ufatr6xgcR6coXg/1n24l+v0fMPtaKgNHV/mmwCM4wve8Ibr
         m07T/LbdAJ90M5PcQBTaNl8plJa8cHxwvi5n8TGsdnemYInnPIANzgHfi1JKrw+hYBOg
         2uyZ6vnsLsnOsdvOiqcHEMYE9Jni6B1W8kTBPx40JSn25fl7NHjUNVySfEDsxEZq6Wl3
         dgNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=33MiC0/yC8vhiy7XnR0m6iodzKCcR7ZJlMLEEnQczx4=;
        fh=vYGTua9lIOmpxKrHmiTtUxrwO+G0mRgTwWecrhKskaY=;
        b=I0kvxMuGIznGD7+kEmzc3DFKKBv/JOozr5bza8VyxR/KX8XcSQ4fbR7jXAUTaLpiNT
         WAFc1G8FVU86sCUVXZxBVRIcLc0jGTFOIOR7ULLkdP/aEETq4xggbKX1X3Z/mTn6DWwx
         LscE/WSzf9SNEf0HxxUTHWG/yzDrP+k0+bUPB3I2+osa5TlwvWCXZarYtfd8bErQbjMN
         XkyyPGYI6E1epSnX4+GoIt1qHHP6uVyq898kKjeOM6oap9GglUTXceXWaNPz9yFHA/a5
         +UnzIj4te+sUG2tj8crVz5ZKZmCbPupjOm2e2aO2eDFfRS7+/YPFdN10JDGjWsPafoBw
         ibfg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723310000; x=1723914800;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=33MiC0/yC8vhiy7XnR0m6iodzKCcR7ZJlMLEEnQczx4=;
        b=jHwndTeVYujAxeS0VNKohhC+pg9RBE6qspvlerq1UUXhjnE0toT6mlnjC1rSOiJy5L
         96cb6R9gIt2FJv1eOofXJ0VD+Qj25zW8uH8F4msWNeydsUbFUo6Qsphmhb5s4+kdxKYL
         kI6aZWhYRkE/y4RkfgnaaoVo3bzDFcxTX+rHwGtaGD8nBZuNgF69b6MAIchs5hjYnUr2
         XgrrOG7AMVYD1zJSZwxksTks5tE2VjIJ6GfyneXeWdfe7ZyZiz7PsuoyDJ+KPLilnYGz
         JphD5dVkimVKeLXjLl6TdWTGF3QGr0yxcMU+HqZ7ASqXOFjfgD5mtbbYIvF69ejcl6iq
         bzIg==
X-Forwarded-Encrypted: i=2; AJvYcCW7T0cQeOzEnm6EtJtipk+V1U7X6SfUfY6GQhtIEYq5lS8c472KIi0aHx+Mm8hEg1KuBwOP4w==@lfdr.de
X-Gm-Message-State: AOJu0YzY5kXcdQLqs2k4xS1lQ9mJwVRru2ZD3lAo3GzNQyE7HA3yE9b4
	kX6W+g1ahvfBQTQvts+o5RVls4F75NE+d2NDJcfxaGo8Jy09y9441DHKpk2JQ5Q=
X-Google-Smtp-Source: AGHT+IGNmknO8Vh3uXAz+fB3EsG8Ni2lftxYjuhYmt29sEmOhanfljs2yUtu8PjvktTZICzRsbs/Qg==
X-Received: by 2002:a05:6358:7202:b0:1aa:c4b4:b26f with SMTP id e5c5f4694b2df-1b177198d28mr689261355d.26.1723309999614;
        Sat, 10 Aug 2024 10:13:19 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:aca:b0:6b5:f4e:9d67 with SMTP id
 6a1803df08f44-6bc697c5c10ls62909696d6.0.-pod-prod-05-us; Sat, 10 Aug 2024
 10:13:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVjBgbhOMhwAXSEcYjkWsz4gTUS4dKidaS3Umoe2VqXT76FNc8NHPUPaIsNiphlcQ2vwhXfhTrOWN5sPw==@gapps.redhat.com
X-Received: by 2002:a05:6214:570d:b0:6bb:9e88:c101 with SMTP id 6a1803df08f44-6bd78ebfb63mr44312706d6.50.1723309998600;
        Sat, 10 Aug 2024 10:13:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723309998; cv=none;
        d=google.com; s=arc-20160816;
        b=axt9jLNgRwr7ZjsrlkRoBCLlUm8G8rCtMRvCmhqYGElxzHUGnasELnDyhAlHVAwTW9
         aFl+KW6/LPjdKLEJTULMMNVktxUqVds+S9Yw1Ksm3UyB1TG6IbDVlzOcxV/dJHAuADRr
         Bvj8Ylpz/FGSLz7B1NJJFnM8t+ZseDjfm+Q4RSyHune3xuNhx87m27U106+mMtfmHuNc
         DM23oydPR02+ei1XXwfge4xhbHJOWdJBfceU5opaEvlk7IiPEmOycVBSDp2sL2Ympb3X
         7vPr41CvWEsr6dygj07js7hhjqwZ5HfnYj68UteM4sbg9WoFIiD8V//b7g9d4HqWI2Cj
         +EUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=lLo6K1LjkgD+nqIvrY+2Kj5TU+UZM16B9H2KBXAunqY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=RYg7J9XbeG0l016CUyW1zfwKkz0Un+BiArIyZVKqR9l29Qd1j2fvBC9opkl6cmiHl2
         ZrircldWKFU/Pkl06fyxAx1miBG91aGjnP0RWuza8Rf3xpCOtZttflgrpkUlRExWpTH8
         tpmcXUg7jjQ63zqUhIFyog7MTNdxqAzxqpJZ1hCc0ARXdNEi/cUWB/CAKf6PjPpB+iyU
         KbdLjJGE3TlSTYP/SbwehsoyOjAaaJc5jDnRj/xyDpct5ti5G6HGkx+yp+rIdcFLEjco
         BsQk8ZIvZWM3y5iYeKQqmbDXpm0rBK6FlASVbWXKPnwDS4r3Ksr6RxdEbKyjLwPIkjhK
         SowA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bd82e8cb65si23644006d6.547.2024.08.10.10.13.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Aug 2024 10:13:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-378-_DoUO020PryAPlnbSVNytw-1; Sat,
 10 Aug 2024 13:13:17 -0400
X-MC-Unique: _DoUO020PryAPlnbSVNytw-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8264819560B3
	for <blinux-list@gapps.redhat.com>; Sat, 10 Aug 2024 17:13:16 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7CDE51955F6B; Sat, 10 Aug 2024 17:13:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7951519560AE
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 17:13:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CE2BD1955F1E
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 17:13:15 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-401-UvDYE2PtPvuw3DRylqlKlg-1; Sat,
 10 Aug 2024 13:13:13 -0400
X-MC-Unique: UvDYE2PtPvuw3DRylqlKlg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Wh6mn0mSJz17Qx
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 13:13:13 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Wh6mn0d4Yzcbc; Sat, 10 Aug 2024 13:13:13 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Wh6mn0chYzcbC
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 13:13:13 -0400 (EDT)
Date: Sat, 10 Aug 2024 13:13:13 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: 6 dot braille input for linux
Message-ID: <1f3825cd-5d25-268b-1843-0aa3d9213bb4@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
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

Do any packages exist that can do this in console and/or desktop?


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

