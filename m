Return-Path: <blinux-list+bncBDYPVTOXSQEBB2OA7WYAMGQEYEWIUHI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA0E8A7BEC
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 07:38:51 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4369f4cee60sf50280081cf.2
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 22:38:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713332330; cv=pass;
        d=google.com; s=arc-20160816;
        b=BtkqpLq+iAiQqjUMoFxjKIlWEZ0LcA+Sq3Ctl2unkQoWcZ1y+/VqrXU9n/nIlWHZP3
         lLsKPyJEFUqnP237sAD11f7y2c6OZu0548WbQcTJyn1NdoHd0vXtbt0+hQIcHIIJh70m
         ZiTHhAesBPGQyz7mjxV+vM21dM0SBhjvHhGO7jx+KiwO1DO6GNdcBygRBEfehwOoqcJf
         LNUqerSsvPgwDCId9t04o/c7EGLS+bRNN3JrwhZAj+h2gZoaJurNuJdhhPW0ocP4bs+m
         5emC1mOzre8czo5PQNftoA0/S5Z1WwqH28mNjkPFgkQxPOJaAWhVk7GrZClHjfokq5Tl
         dz9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=IwvlM6pTTc5jgSd3id82JJhtoMJMcuu2lASm3097vns=;
        fh=JiqLNcO2/9eHQM88N2ygkQHw/YMkGj13CupsVSyLqLk=;
        b=t+IGv3gWPWyw1l7xxmQolMWPkieSxz1LOBqMAEm1PN1TsphNv+M2S34wqW9ZzrMOHT
         oMfsRZFk9VZQviPKvS3CLB3kU2yYapVLQKPlvmga6NM1V0ZQVdir5kuPVfxuq3Af/pmy
         +pmyD5dBYoxe8wDJGQBZQfN064wqD7Vxe8eOfwnOCyj9/+/12PKcj51j6C0h3KCSTL4Z
         ZBb33D54qXvAouBCOmtdonMlIIf3mP7qGFkpowo8ozuM2uyUwKf79ZniVjQ+OwBtKAp0
         9cSzTTpY4C3Tu05Hj62DiRC9XmGP+zQcnhd0B2xsjWMEmwtiIsaiQbmifrEPfshXR542
         STxw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713332330; x=1713937130;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IwvlM6pTTc5jgSd3id82JJhtoMJMcuu2lASm3097vns=;
        b=oVWVaR9/K+pDwlAPIdJYUL2qtMwD8QOy9dn9Lyn1k2PAp9NmyRAB8pmsT5vFSeO4rp
         XyZIP/qyFMwrss27KBldzL7c/8FELpDzCXieI1cjAncN9/F3hjWsQcgm1GmDJUmKUAb1
         2IVyn5aEOz/Y1yVVgAmPlClSE2H0DqwmajjhyNjUFRE/NkeTGPVrHtGLcGklWnMYxNQu
         bkilfcJNxsU1v54gGS2YMiSsyhO1xsqs1J7O+zRzkVLPhluGS3WGZuXiwBDpwl9SKRhh
         t8b/nXIKzlp3rRgVM/IHqUiAV9foKI8Qm9trhO1Hbh+0WGX0AGux/qoM7jaaEc+Lrcc2
         0jaQ==
X-Forwarded-Encrypted: i=2; AJvYcCWM2y3I6bXVyr/JmBeEowBVdREeddiSCHfiFkpggHrtl1Q8v8chypLFoq9HPv/yO+BgbOKPgVFgliRQMT0TcQncvdOYHRALiYvC
X-Gm-Message-State: AOJu0YxNvPJ5E0lFumoozZt3YtkHnt3T3NxbJ1n80VsOpJXpYifYBbEH
	Ka6FoixHETEPoa4K2y520OwnUwVkkL9B0TgZnT0fogsuZd60ropaR5wduNEfSHU=
X-Google-Smtp-Source: AGHT+IGXD9ZFuR7vXFlL75sKZ55HORdbdIFCSnZ70TW93IztGNpCsMdMoCOou/HlsbqLCkDL0siIHA==
X-Received: by 2002:a05:622a:446:b0:437:4503:8ae6 with SMTP id o6-20020a05622a044600b0043745038ae6mr5010929qtx.17.1713332330115;
        Tue, 16 Apr 2024 22:38:50 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5747:0:b0:434:ecf9:f43f with SMTP id 7-20020ac85747000000b00434ecf9f43fls6005282qtx.0.-pod-prod-08-us;
 Tue, 16 Apr 2024 22:38:49 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU7S1LfzIPWOC+Gp5ipdkgPb0WfUlYiUgAKlC25XR7hMlGuH+8l2ikXl84WAuWnz79nLodI0cGAAe1mvCyhTQyfp9Xoc0BAR/BILb7c
X-Received: by 2002:ac8:5891:0:b0:435:7a:b367 with SMTP id t17-20020ac85891000000b00435007ab367mr16948622qta.22.1713332329280;
        Tue, 16 Apr 2024 22:38:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713332329; cv=none;
        d=google.com; s=arc-20160816;
        b=Pkk/ugxEloO0XSgnKBHpc7ucXwWHJcYv/INOMrCd3ogupVxDDjkOI/wr/vWCZBSHZZ
         vtJBpDozNI6P6JC1KLPYdCxlzY6A4F0LaB5FEY/Lz2Eb/FsKmx1W3kQzGwQ8ATeBIhBH
         IySfKJl4Ns4iWVRekJyBI8/G9hZvvjmDNMe/YyHjrZv5PyteX9VhcA+omvSjyW5OpCst
         GWwvg1u23+hWdIHLbKP3kChc5H95DLfPKoQ/QwEn8sfJm+bV7Kwfk8GGW+73/IG274FL
         U84158Mok0e76JM7UiI+YlWMv7hp0wy6O0ke4W8N7xUMgk2SUzePBrFyM8lqe/X3bTD9
         PX/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=aTnb0zMBNBZYADOODM2kHH7/Y1bTIlZaVgAlYssk/tI=;
        fh=dhZ+PU+EbN3sWMMTWeiK7THfWDmeVmv2WnEI+ph4A3M=;
        b=e9vJlchxwwaqRwL3y5iSdiGTsQplgM1s5iWxeZ6S8YvAkd+dj4SMeJYXnSOPc4uwh/
         lVuzzglfxzNi11/Gyz1swAubKm5+TI75H35C2w6Y0rYT11U38gqXhLGhFluxYJz+jEAA
         SF0SRPi8c5fsAot+E6Tr4xfO8f2KXYO943CanzyP8I+UMN2e8vkLXzwBaBM0Mss5ekKp
         6LWllyMIqj/Q+gzIW12/GAA74jZiADsnH1DCVDDy7ND1WF6+VyBROWaJkcRHHgczvvuO
         aI6o73plOeC5TLNQhfdm5JGOPs+R5gY+iezbl9mBphT2gWwPAyu/ySn6DF+ZPU0KwXti
         jDyA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id e15-20020ac8598f000000b00436f84ead43si7015621qte.360.2024.04.16.22.38.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 22:38:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-77-iWQZcSfEPZeqU7PvkkrGQA-1; Wed, 17 Apr 2024 01:38:47 -0400
X-MC-Unique: iWQZcSfEPZeqU7PvkkrGQA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97DC98011AF
	for <blinux-list@gapps.redhat.com>; Wed, 17 Apr 2024 05:38:47 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 949CE1BDAA; Wed, 17 Apr 2024 05:38:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C73F51EF
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 05:38:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0EE40385A184
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 05:38:47 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-372-_HhzghQmMEmrAFwQY77Rnw-1; Wed,
 17 Apr 2024 01:38:44 -0400
X-MC-Unique: _HhzghQmMEmrAFwQY77Rnw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VK8pX1vvnzjpm;
	Wed, 17 Apr 2024 01:38:44 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VK8pX1mBjzcbc; Wed, 17 Apr 2024 01:38:44 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VK8pX1lkbzcbC;
	Wed, 17 Apr 2024 01:38:44 -0400 (EDT)
Date: Wed, 17 Apr 2024 01:38:44 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>
cc: blinux-list@redhat.com
Subject: re: change timezone
In-Reply-To: <66df8141-f3ce-9fd4-8522-c7bb575b1c96@hubert-humphrey.com>
Message-ID: <06d2c3b4-862a-7211-637d-f1d6990ab6c4@panix.com>
References: <d2d56610-4db8-7f36-7fb5-977a4d77a1a6@panix.com> <779bf89c-4808-0d59-4ca1-952c09d00fb2@panix.com> <66df8141-f3ce-9fd4-8522-c7bb575b1c96@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
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

Your laptop is missing the hardware your cell phone has to enable those
changes.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 16 Apr 2024, Chime Hart wrote:

> You know, many of our mobil phones ajust time-zones as we travel, but this
> laptop never ajusts.
> Chime
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

