Return-Path: <blinux-list+bncBCVPTHE7K4IIVQU3XQDBUBFVCHOHI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id BD66EA113E6
	for <lists+blinux-list@lfdr.de>; Tue, 14 Jan 2025 23:11:24 +0100 (CET)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6f3b93f5csf51352185a.0
        for <lists+blinux-list@lfdr.de>; Tue, 14 Jan 2025 14:11:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736892683; cv=pass;
        d=google.com; s=arc-20240605;
        b=Lr6JIkXGs3VO2PGeSgjOw7BtnZSp48zIwjz0NVnOh01BTXZW7SCONXtnnAjoTAnzhT
         pCpGvhl0juPguqFrsa8+MVb5DPfTWBqVx2Ixx60IdNfKA/++ID/PzGGfrTZGb413bKlh
         ZXlozIh1aasRZASPUFJRiD3GiF/wC1NtlQahA4R2vrKNq04y8QJCyZlheE0VjxZVo8Wz
         gQmGrx2owvCrplsudfyh5COImRufcmyI/IHHzTTHSmTdNNWnoyvMix0lmI3elGH2uof5
         VPh4FGj9crsHv5ANlg5+KlvyZJKOKzJPtsVMcMpKiFE2QjI6iTvZkvLFRY1S8tmHX2Ey
         mB5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=Bacvok84ChLART0g+63HHx2q0PGKhISac6QqExv+6/4=;
        fh=Pl7ThbMPQdBnJlqrlbhTGyEwgiK/TL1gsMTVVEWpIGY=;
        b=UFeSGdp5C8BqUV5Xk3iFeSEPbRV+o5QXvfJVY3DSf52b/fIyjolvAkRKNOrRgiiqwF
         1kbMkBDNcKtkSzV5QQHvqsaYhfmkYCXioMNLthPHF/UzCKFdQ1yuNt4lcAB4l9KgM1EH
         ubUhIeVv69Co5IFJMugvEA15y6fkz+ezz++FZIWXiihwPh1SHcbgWutujbclsvG3iwwd
         qfDuikbexXZFdH3IXavlti4QqDXU1F02ZW7XUD9LoQGG+CO2Y7vTNEzOlLNj9QOpSUbh
         PYDqaRXl3HlvwXS3EsjnrLrp5UkZCgKp7h1x+SxK4EYn1+ynJT4PHwfhh8ON+26fMuUt
         iKrA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736892683; x=1737497483;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bacvok84ChLART0g+63HHx2q0PGKhISac6QqExv+6/4=;
        b=Zsa4RKnLWWTlKdJNbUpNNdaBfrETnnFohwiNVg/POurko67jNr6KBeoWKuYg7hDp/z
         fL4DzPX9SRFuG1cTsta6xvlTZFBixcUmOgF8Ba2oudfHNAwXaNgeKJtFGKdnFkrZg+ql
         Y4Yfn7zJ7IwR/NYIwIaf6ByGKgyMX6pKILENIfs3w1/KGEXe/7VI4z4+K4uXDHWRoak0
         Ado7D6EREJrhzsTnWG7s8dAfONBZycGSNIX7VUBliVgummmZamd+x9m+RZkRYSsFd56q
         QwoW3JD/bbb3Poj508yiwnMt+bHc3G4xRUCLNRrVaQHzjlFNIIrIezg6hY/1ZzKNEr7B
         rbDA==
X-Forwarded-Encrypted: i=2; AJvYcCX01zKQp9v+5WBoLcVmhk6vK3AsyEFyeMnGaGfT/JCQeqjy+/pAacjrTL4ICN177yk0LA2kZQ==@lfdr.de
X-Gm-Message-State: AOJu0YzRNo2it2EGsLga5y0bM5BBOKRHj7lfHKKiAwMtdqW1sMJ1WAqr
	jimnbyUQxvwabiN3OimG69uMYPTU/j9fUZ6FA1rKqkX0PwhL2H+AhVOLBR/GEG4=
X-Google-Smtp-Source: AGHT+IFc2xrXqWEn5a8e1/dxxcK0Iw/iYSJE3NUBVDOyuP19+0kFKBYG2SN7QZdTDAHwBUtSo5GlQg==
X-Received: by 2002:a05:620a:44d4:b0:7bc:db7a:4f78 with SMTP id af79cd13be357-7be523b9958mr111809985a.4.1736892683482;
        Tue, 14 Jan 2025 14:11:23 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:11b3:b0:6d4:e40:5156 with SMTP id
 6a1803df08f44-6dfa379ea56ls110687406d6.1.-pod-prod-00-us; Tue, 14 Jan 2025
 14:11:22 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVY/OC1lkl8TXHjhfd4R7n/hRNFZ/nOzIsuEPoFY1Vs4jRKGW/MBF0FLZ/nQz5IOnMmM1Hrwt/MJ7gPlA==@gapps.redhat.com
X-Received: by 2002:a05:6102:3e88:b0:4b5:aa91:f29f with SMTP id ada2fe7eead31-4b669f7b2e8mr761927137.8.1736892682405;
        Tue, 14 Jan 2025 14:11:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736892682; cv=none;
        d=google.com; s=arc-20240605;
        b=cKzQtyrn2pv+BZ6IirSE/kiQQ6c+qFMTIQXOiqwHU5AY4dApQEUMjUSSp8gHfMRER3
         chLzfDjKG8PIC92MeN0gGRt8zMRmjCxfIlGiSKPA8bAzH5oWkaWSp2RblQTzVrYsRYgI
         Hw88BUzqx3sA0tMFYP38jTm4Nw+Cks/DgUGry5B3r4hCt8xMTp9UmYLVhS7zmlEPg6Hd
         VeFO1oyocqc8hzkHSC5eaJopozX+tOyIBBJXBkg52iUBx8oJyHN5lajeS42YfcDshT3Q
         dj0aFqi+CIjXOAO+rDZ9NRApb2AhE5Df7zhzYQX7QEpfWUMGhYcRGKLgeBBvBM0TtCBL
         tMQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=Bacvok84ChLART0g+63HHx2q0PGKhISac6QqExv+6/4=;
        fh=St2LNIxA8Pk4kW1KU1Yx61fcRJxeBc/8LnnpSgNk2Ks=;
        b=LnfEwW3Sbvd26YsWqaY/mg1f8+GHkBe6hSnekb0SkY85EjH2Lk1EASA0K92TXcj1dx
         /yymZ7p2wyEZx8BYZtaeySeIhzqzHTWRaJ2yOKRCfTKR/N6HQxYwsH71ApBjeEhx5VC1
         lPrX6lKjxCbAG3HnAFRY1jdaw9VceCYahqpprFsPAYc8QDP6DEEy5wVm9H79hBEnijFl
         ASLL3IBZuK5kg+Gk31d7ujhjxGLPANr5iW27ekXPIga0qld08adyV6kebe6O1Lt4M9hk
         L72tnubf4DHWTYVymBo8RXRiBbtOm4WpEWZQKBIcnxSaTuzAtkVK7wnzWwXHDiEpHexz
         LIkg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id ada2fe7eead31-4b609393588si3783232137.609.2025.01.14.14.11.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 14:11:22 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-583-8dyg2BxCPM28N8C3B_pC_Q-1; Tue,
 14 Jan 2025 17:11:20 -0500
X-MC-Unique: 8dyg2BxCPM28N8C3B_pC_Q-1
X-Mimecast-MFC-AGG-ID: 8dyg2BxCPM28N8C3B_pC_Q
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CCFB71955DE3
	for <blinux-list@gapps.redhat.com>; Tue, 14 Jan 2025 22:11:19 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C8BDD19560BC; Tue, 14 Jan 2025 22:11:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C677519560AD
	for <blinux-list@redhat.com>; Tue, 14 Jan 2025 22:11:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 51D861955DB5
	for <blinux-list@redhat.com>; Tue, 14 Jan 2025 22:11:19 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-605-E4p9jcNRNWyLG_ZJGTMAog-1;
 Tue, 14 Jan 2025 17:11:16 -0500
X-MC-Unique: E4p9jcNRNWyLG_ZJGTMAog-1
X-Mimecast-MFC-AGG-ID: E4p9jcNRNWyLG_ZJGTMAog
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 560BE40508;
	Tue, 14 Jan 2025 17:11:16 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 1ED001001B3; Tue, 14 Jan 2025 17:11:16 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 1CFB410008A;
	Tue, 14 Jan 2025 17:11:16 -0500 (EST)
Date: Tue, 14 Jan 2025 17:11:16 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jeffery Mewtamer <mewtamer@gmail.com>
cc: Alexander Epaneshnikov <aarnaarn2@gmail.com>, 
    Didier Spaier <didier@slint.fr>, blinux-list@redhat.com, 
    orca@freelists.org
Subject: Re: List problems and a suggestion
In-Reply-To: <CAO2sX32cUtR7bgXSV1JHzd_n0_mxxSM7EnNz5hVQKuPB1C7V_w@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2501141708190.1436145@users.shellworld.net>
References: <MTAwMDA0MS5jbHVs.1736523986@quikprotect>
 <8e04abaf-e64f-4d80-b2b7-8870d0eb5429@slint.fr>
 <fesoxhx7g5kob6t4gmu54mwcglavzqg3hnvn6nbxm7om4phbfo@aclcfl3xj4op>
 <Pine.LNX.4.64.2501141612120.1435291@users.shellworld.net>
 <CAO2sX32cUtR7bgXSV1JHzd_n0_mxxSM7EnNz5hVQKuPB1C7V_w@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 7EpfsDiW_QjFUHXCnnu1QTIDrStNuY0alVbHATdMZtY_1736892676
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: sGuVmhvtd-x4AZv9wXfX_0P67i9oRmkTfaWyuSWe4zc_1736892679
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

I am unsure how hitting the enter key would trigger this.
Its one reason why progressive enhancement design is so 
critical..accessibility is not about screen readers.  It is about 
interaction  speaking personally.  after all, we are not likely to be 
using the same screen reader.
Whathappens if someone is using a display instead?
Or navigating with their voice?
Kare


On Tue, 14 Jan 2025, Jeffery Mewtamer wrote:

> I ran into that as well, but managed to get around it by going back to the
> subscribe form and deliberately messing around for a bit. Apparently,
> someone efficiently navigating a web form with screen reader navigation
> parses as too machine like for whatever garbage anti-bot measures they're
> using.
>

