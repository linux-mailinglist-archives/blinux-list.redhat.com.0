Return-Path: <blinux-list+bncBD6J3OOK2IIBBMM36SVAMGQE3GHBQPY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B5B7F371A
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 21:06:12 +0100 (CET)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-58a8354dc66sf6480756eaf.2
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 12:06:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700597171; cv=pass;
        d=google.com; s=arc-20160816;
        b=VwxKUGDOpSJVmule9OxvbqJKNmkE9nDL5BS3KVmfaBwNiIZ9t8RFE/W4U91AmOdOYX
         d9uneStisJ6i0KBlf3QPrggo+v9sRmTCIEm1jWKj+473s/IiKQVK1YaShtiSCMfdvenb
         Cfi1sTFaW0P8zDIvPsN/zxdcGF+m8JnYWp342GcZJ2K8N1+b4sZWxXjQsDsbcl1L7RXC
         HMmpfzzp4ZvktLcVh+o3CQqnQ1OavAlxIhXRimvXWzEz22kk2MoSrYWvmwGyUOJf8S1r
         hPDvPnp4cx4IYDtqmHBiTBx7HGdbDNCdt2mQVmk3Ump2L4lGL9/RL6aD83XhXPI+pUmT
         Tohg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=F9d2inEJDiNuPw90iQaBUI4gtVaf41lKhW/jUJb2RRA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=0flDxrkDH513fnugVxvkKtZBMPGVrLK7t5fnSn3NyTUzE6+GH4OYxkPv0eM5rjLvLl
         1htwMDtHDuVVIt1Oxj9oipkRvw4tRKDf10Bjl/LLxps1EA/+JeDSP766itRyVnQ98eNj
         EEBWJ4uqW/4EUlnZlC3FGF8KDYN1E0ud4HpBXoug0ONlQs7r4YwfizpJxtdA64krEnyb
         DOUtWNVWs0J5vOXVk+bnDV8Vq3x4K1sTWeJ4oxQRmjoxzZjcEHl9efR4KdM7F+PmnuvP
         vahm67MSuyG3MiZxpGzwyYIyYKDyEey6Z484zqpXe+EAYuDmteNd7tuzeEjOmHcG+62L
         I4GQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.19 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700597171; x=1701201971;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F9d2inEJDiNuPw90iQaBUI4gtVaf41lKhW/jUJb2RRA=;
        b=A1EkuLZedR54CDi2+LHzNM27mrQSn90GljEunusE0uuoTEo27x++I+WchZyeyIlc4V
         XRz0xhz74IRkDR74GQr26206G5MkYErjz+vJhkbm3fr2tONEtYKFlzLNmrJNU8ic1Dan
         pYBayCbEWoYdvRCp+YfZuzO8o8DYvMy3gzsbbJwnIYojtFYaozOTfUs0gfklz/YmCQeH
         KkOmkIFypZqTjBc6VbtWHK9mWDX7zn7WvILMGREHfi9siJxcD1+1YONqDm17zogTX3f/
         Nmph31vhjXt/6A7P/LzJg/xdZ9VNlHKy2H29cdBMX/iDEfvxU8veWfKVqpdSKfWCPQW0
         7gfA==
X-Gm-Message-State: AOJu0YzK4oAmfJtySFD4oASYvNRKPWN67NaRaCxnkLWKwZN9rimfIz1v
	btAUK3nuXlayRnp8+n83k1Cf7Q==
X-Google-Smtp-Source: AGHT+IHk1h4KMqXlc7hdhJA4YBoA31jTx2YzXj6jPm3kuGcBZkvsA4abghrWl7cbg6SrycxmaKLEAQ==
X-Received: by 2002:a05:6820:228d:b0:57b:7e41:9f11 with SMTP id ck13-20020a056820228d00b0057b7e419f11mr536369oob.2.1700597170086;
        Tue, 21 Nov 2023 12:06:10 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:2185:b0:589:f693:e94a with SMTP id
 ce5-20020a056820218500b00589f693e94als512977oob.2.-pod-prod-08-us; Tue, 21
 Nov 2023 12:06:09 -0800 (PST)
X-Received: by 2002:a9d:6857:0:b0:6d6:4b8b:baf1 with SMTP id c23-20020a9d6857000000b006d64b8bbaf1mr314600oto.23.1700597169302;
        Tue, 21 Nov 2023 12:06:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700597169; cv=none;
        d=google.com; s=arc-20160816;
        b=xnOOjUsjKz20x+9BVsthwGPYXfYmOPwh5errP/49t+09V5jt5J4xNRGIrVNP5loG+X
         rEQpnLX1gCK/GhEtKulLcgnDKm2vinjMaZpV6+4TeevS0wwX3JAS8cUW/J1RQAmWecsC
         PQgoUS5aQ5UCN6r1GyGHTn+YVuVnXQP7m3m/rNEPhOzciIbZmWusm1TvQi9C17YG6tmp
         RL26U6s1awhGH+qsc/r1pM4bw7QEBI1Am8hVM2RfC37wjIpo/JLQM5qnq8AHMk/obA9N
         k9mikZ7PSpCws52OrKgflp9mKwR62EhShtumMIHoCeEJx5XnWbEqSsWnEGzEmpszXvY1
         7NIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=ffzEycCtr3MamevMsKCDykxs/PIfdMrzGM0B5B2nftw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=S6KuCahRazvXsWiM8AOKG96LXpDVwfwU6ozh6cJWG1CAXWFAAPAheKWHEY14+rmGBT
         FXmjf3tavbzHW611FQxDyNO9j4cGgRzux2hdBcIXZNl0I5dSkpmsjyeuthGlrEFTMVaP
         7dZVXzIGv1UgJbXuMKtXghWaVs2CDwD7833c5k1GESvduiAY6ipzdWOVLoe1fotwSaUE
         b1h8+YN1sHd6ZRUn2+wgss3fU75Ia7DwBccNFTz85dhoF7MHiBsso/rUJaBPBw3Vj7R7
         oug70wXrNlUi50QFmo0h+N95NPT0YkKGVR58Rj8WvuB8A9gyL2NORmGv/8j+5gNW2i5W
         KPLQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.19 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id m10-20020ad44b6a000000b00670c3758754si9429868qvx.314.2023.11.21.12.06.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 12:06:09 -0800 (PST)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-156-Q3RndyeTO-iYlysYt28uzQ-1; Tue, 21 Nov 2023 15:06:07 -0500
X-MC-Unique: Q3RndyeTO-iYlysYt28uzQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A6062101A53B
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 20:06:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id A306B2026D66; Tue, 21 Nov 2023 20:06:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B1A22026D4C
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 20:06:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A7F980C346
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 20:06:07 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-407-8q0aHGvlOeWB4OFsB1b-6g-1; Tue,
 21 Nov 2023 15:06:05 -0500
X-MC-Unique: 8q0aHGvlOeWB4OFsB1b-6g-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MgNh7-1rXRsy3Jh1-00hyhJ for
 <blinux-list@redhat.com>; Tue, 21 Nov 2023 21:01:00 +0100
Message-ID: <20231121.200157.152.1@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: Regex for spaces
Date: Tue, 21 Nov 2023 14:01:57 -0600
MIME-Version: 1.0
In-Reply-To: <20231121182732.f675f7aqswegm7xr@sprite>
References: <20231121.153445.633.1@[192.168.1.100]>
	<20231121182732.f675f7aqswegm7xr@sprite>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Provags-ID: V03:K1:Nw4Xp2EMVnSYOtb3ziEP5dsG7ENnQLLVkkF16yX8/Kv1Wjj4JND
 o47ku4j9vRRfMnFqL6DfISW2QTErfb+8Z/Zqwa6mxTPQ300r0KcUaZUyVUEkDsHdA0ucmKe
 otWq/Byy/wz+1fHkRbWoT+AVcJ8daE0/lWGP0gMoGma5hzBIkbyMGTWMA6toEYSAH1oyUts
 bJ/NGa32TQwKYy0K0iO7A==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:SPmOtUa+u0g=;C+TBP1/Cuqdl7slLLpPIheTTfQn
 ZtCXf2WtFyp3okyDZDygRvAnTaAz0Ukxdgpkb1iIjt5g3RbD/UIo/iGN6lFXAn2nfTNHUOMbh
 kZlPkQNRUP5dcwi+01v4ecXoq1i/SOYKPMXoIWl/vAZ221S5IxI3k/AWAC1I0FOxJFPAE7Clf
 604VbtMPGNJDWcPtFP9xJ0LmuavRWIn+QZLO5PJUf0qIlhoR0jdOz29GhOJ9koP0HpkOUCngW
 m3OO94N2zf8sL5FjObLA0T0zm7aS0CtxTiTMOmn3LFer6werOvekWhlzc0tFPMFHJjES75Hrn
 AuW/OWRHDhqXhQds+C2IEEx6+ZotPOr0twtHY0Lbfk43VhNINdL5Yp5UMFLWo9bb0PECb0lhc
 KfPMepVl8YV39f8shCHi+QJFb7nSzQK+QuhareGnDvH/QYVHbOBROPXibHuDaryozSahO76d2
 /2lnq33O4UHcM1s9mQtI5/7VITerfr4XaW1cB9HExKPLH7cysLzm2qlj+lZOMrmKMeycmmJjt
 bFfk0xfFBRMShP1xuOK/jyED1a8+hgu8cUJfpLu1egv3NfBehZfqyMwXpDTXWB02M5DT0awqN
 NH9eQCyeVFoiGAHnxo1H22k0WkuGQ9aPqvNDVRVN12MPdyj6507bgI5MGhRcImEmkk19D8tey
 wzLyvI3L5v4Cz9UkrHinxxSKAee8Y0Aotqv22vYp75XK24oIfbKZ4bIZfRZ2GNQ47L028yx/M
 Z8rYYECGyJOAQV6/fEeBTb+r/JqlD4RHZMQoHyOCeZXUNwOaAppJy6mMh1ABfEAO+59kHxaKp
 frsg5ZWTondEv5o0MAxRIlLm43ZohshOpSofiT0HavbumUvRIMhaCNN2XpBRW23K1513vcQtw
 wAIsRbnEOp/Y2efic7INC4qBey/wjR5v3evU0oEDkEmKvHkbwfI8h+Qoik9ezJA7zvPwFCDLd
 oOsQEQ==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.15.19 as permitted
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

Thanks very much. This helps a lot!

----- Original Message -----
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Date: Tue, 21 Nov 2023 08:27:32 -1000
Subject: Re: Regex for spaces

> Glad to, Rob!
>
> -p '^\s*(\S+)\s*$' -r '$1'
>
> ^ anchor to beginning of string
> \s* zero or more space characters
> (\S+) one or more non-space characters, parentheses capture this as $1
> $ anchor to end of string
>
> be sure to use the -d option first to make sure you're
> getting what you want. I didn't test this.
>
> The classic 'rename' perl script is almost the same,
> but does not recurse through directories for you (you'd have
> to use 'find' for that'). The search and replace expressions
> are separated by slashes. '-n' is for simulate only.
>
> rename -n 's/^\s*(\S+)\s*$/$1/' [filenames here]
>
> Have fun!
>
> On Tue, Nov 21, 2023 at 09:34:45AM -0600, 'Rob Hudson' via blinux-list@redhat.com wrote:
> > I am not good with regexes at all. They give me a headache lol. Can anyone supply me a regex that will remove any trailing spaces in front or at the end of a file name? I use the program brename:
> > https://github.com/shenwei356/brename/
> > I have a regex to remove double spaces, but now I need one that will knock off leading and trailing.
> > Thanks for any help.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> >
>
> --
> Joel Roth
>
> --
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

