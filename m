Return-Path: <blinux-list+bncBCD3RKH4ZIBBBQ6U626AMGQECWEUBUQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 5769CA24712
	for <lists+blinux-list@lfdr.de>; Sat,  1 Feb 2025 05:59:50 +0100 (CET)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2163dc0f5dbsf60435515ad.2
        for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 20:59:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738385988; cv=pass;
        d=google.com; s=arc-20240605;
        b=WZT/JVZa1XJA+zRfRBf0ahTMt9GQClM7ThBR9YcpmH3moPT1bhbIb/wxyBOfTBTVgH
         HTmT7nUDptPdpr+ekZsKV+1nC//1tT0Dw1r7PBqyBKlv4mKKeAowU5nZCk8Kv/a2/i74
         DWoQwnx4/kWd8Te29v2D/8EGOnbxf03Uk77FY3hAEfOm3zRgAfw06q27kstyzTI37FRf
         j7rXf/sHRwK0iaIyrhhc9KmLyY52K8ANvt2v0XqIFe6LXrRtnBRFO8aFPCEi3Z53KMTL
         L8B3tkUm0Xk5fdFPSC2f5prxOWKoDA9vOGGkrmusD1VboAFEL9WUi5ZEKGUlfuQEk/vP
         jdpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=5HE+s4gRz6SIjmbmPgC8QwT9LQ87aUlUZOCIFjMgJYI=;
        fh=d1A7Nzh49oKvxI/Bz+PI8wjw1Fu9Ai85Di+F9Hxw8h8=;
        b=BfFy9isN2I9wjMxOYqFR5PxrdMmkHjk7C6IAsziu7g3ZaOdetz/FmOAmdsIXc3rjPX
         quSWlrgA9rYZnrquNTppAIirJ9Hf1A3dhiq2Xlj0TqvFE1IBCLSMkjz95KFwffR9RA/K
         2iIjD2Mg7Sg1a6UavVTzpwnbs0TyApaukqg25It0HiODo7J1zjl+N8wegFDAFSGZQH3H
         nkXNpLLcRN297/Ezob9ozmMX+I8/YJJIl/iIVpnvDF0A+semGrvLXRyAlUtEqTYtQDd/
         pvUcZDqqN7/EKc7hIc5pdycChLlqKSTqDqQ26xzK2u4XOrduTxUSPUzwvPYlKGVudGGJ
         pgcw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.51 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738385988; x=1738990788;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5HE+s4gRz6SIjmbmPgC8QwT9LQ87aUlUZOCIFjMgJYI=;
        b=D0Rtmh58taYiZF3tSxNpYkmOYAP4aW0hG9YZD7PzxJT8zikfav5JGQbffL6Bl3rswB
         QmizLc+BxlyX+j6f78N1YGppvBTj8OghSnbNUenhgJTliWx5AZRhl2hlRCZB7ZtsXEbR
         MCb7xJx7fQHjdLhj31atSb8JB7Ti8VAc4aOca0ZXqm78kbQ9UQ4X9fcqyOmvQDmtjcK2
         lDZ3M4sHdvj/6eoz7V8x/TTg80e9E+cEn/kh5693e2Tao+P2L3zPMxq0XAe88arpswAc
         MGNPSEQSizGVX40iwfRmTEUYPe/KSbatKaFd/s+9ZezQI5DQjF6azyMZHQshIs+xC2dW
         1ldA==
X-Forwarded-Encrypted: i=2; AJvYcCUU7FMCpEx70e+fMdYJeWQtzvogP/Hj59MOhN+ChCMpObqWPEkBr+x0bVbEJPWAxv2ELWqbJQ==@lfdr.de
X-Gm-Message-State: AOJu0YxYNe7nzMAJEuuVpmnrU4JbbrGQ8W3KbbnsecJoHbQi3VgxWwbW
	OacNiwDdhg/sFwcN+1EGJ+/YYOcKIb7AdTBsTNexFAUg4K3Eo3a38Y1Amx0Z9qQ=
X-Google-Smtp-Source: AGHT+IFG0p0NTIcxbrJqOAtfICtz8JzKorWe1uMWAo7ZslH3K8o7tpg2xNzIBnFUWFF+tWpyWBAfVQ==
X-Received: by 2002:a17:902:ced2:b0:216:554a:212c with SMTP id d9443c01a7336-21dd7dff3ecmr206713145ad.46.1738385988351;
        Fri, 31 Jan 2025 20:59:48 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a17:902:d40b:b0:215:6c65:38d2 with SMTP id
 d9443c01a7336-21de147e9e5ls20885535ad.2.-pod-prod-01-us; Fri, 31 Jan 2025
 20:59:46 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXMBTZCRsmsN5HRvhqYfunuGQu30OfFhkbKLxw5jAtwj2KUwlpH4HfRuHC4jeaXzFGJCaRNH16Ezz1R1Q==@gapps.redhat.com
X-Received: by 2002:a17:903:948:b0:215:5c1a:f369 with SMTP id d9443c01a7336-21dd7c3c5d0mr221630885ad.11.1738385986563;
        Fri, 31 Jan 2025 20:59:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738385986; cv=none;
        d=google.com; s=arc-20240605;
        b=djRX1jaX0fNubJfJJlvaQODPKbXFWb/51B35Jx8dXiux6JD7+KbhAwVpFluLcGn69b
         Y76VnDmtJlg6aw2hgrtKr8c7md6gw0FnYodD5xlDQqhxguup8bsFJ0nReX9wEalFRZ7r
         5ARh403F/sah7LIjpRSrFdoXsU5H5hl3cXD1XqSfrJxOqqLAgYgJi4z48Hl4PFtrLqwG
         zbsX6NAD0p64/uQ0hNwJ2KyKLK1teleJ8dNTo+Et3ehN5KNcT5bwvK5SmxtU6DfeVe2M
         Oqz//5MN3qLBLQ410VZt1GsKO0oQ4FCOeWVBOvDk7COky5EPHo4RA+ELFBlVtXoxD4hF
         5tgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=2C3u+NO651hm4DpHtLqeUUEb4ZTf1EF78saH0pHiBis=;
        fh=afeQqVKmYf9Me5LKKoc1/L+JG9TzQiygF/Tjngx+Kf8=;
        b=P8u8lqkctAKi24cYRwzwcI9VWEHL4Wa1UlRwPpgcNWpfFYnagbuhijNzGz/U197WOZ
         Lpgyv6ip4SjoZZne7tDGUZLByh+s4DwGtg2GJCbq57pErHArSI++y2LB1/mNMymifF6Z
         QHMwbAcElbdUB9nyoRALcJWB+N6oK7GNRD+Czn2MDQcnEoRIa1Iq8fqDREmTyI2bwlVT
         pjOg1qskfx9gfeP5AD307YwIKIsRz2qDm1G5mC243rb9EVw4heYlfJJSn7HSTyHMYgUc
         1G+1/A6Pq0zXWOtr+iRRAUvSf4t/PXyeJ69YFCcEmiGWA8KBaVjVqlGmSCzgJJKQhYHG
         /S9Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.51 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 41be03b00d2f7-acec018288dsi6069514a12.231.2025.01.31.20.59.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 20:59:46 -0800 (PST)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.51 as permitted sender) client-ip=209.85.218.51;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-248-WMfsFuc3PoyJsYnvO6Ew4w-1; Fri,
 31 Jan 2025 23:59:44 -0500
X-MC-Unique: WMfsFuc3PoyJsYnvO6Ew4w-1
X-Mimecast-MFC-AGG-ID: WMfsFuc3PoyJsYnvO6Ew4w
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 35D811956080
	for <blinux-list@gapps.redhat.com>; Sat,  1 Feb 2025 04:59:43 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 01D081800268; Sat,  1 Feb 2025 04:59:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F3125180143F
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 04:59:42 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 53C171956087
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 04:59:42 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-82-Zy6hYcfvM6yr1x8YcUTuOg-1; Fri, 31 Jan 2025 23:59:38 -0500
X-MC-Unique: Zy6hYcfvM6yr1x8YcUTuOg-1
X-Mimecast-MFC-AGG-ID: Zy6hYcfvM6yr1x8YcUTuOg
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ab2aea81cd8so471549866b.2
        for <blinux-list@redhat.com>; Fri, 31 Jan 2025 20:59:38 -0800 (PST)
X-Gm-Gg: ASbGncskh5b3ehpZ+gAR1JUrcn6UR6vkWrHXbQLMFXemoWqNhhl5zg75MGLzsB+OdXr
	MRrdZjK3z/J+4BK+/0gd2xXeaOVWJ8y37jGbzdneZ82X0VY5AJnv8Bnu+5vaPnKPBi6ijeuKogU
	EgRU6OjHOQRA8qr6Lqq0tzARg6qXTu9g==
X-Received: by 2002:a17:906:fb1b:b0:ab6:d799:d113 with SMTP id
 a640c23a62f3a-ab6d79bc159mr1245046066b.34.1738385977278; Fri, 31 Jan 2025
 20:59:37 -0800 (PST)
MIME-Version: 1.0
References: <Z52ZSVy8qz18tDQm@panix.com>
In-Reply-To: <Z52ZSVy8qz18tDQm@panix.com>
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Sat, 1 Feb 2025 05:00:45 +0000
X-Gm-Features: AWEUYZnNg2M4stfc0NeK5iFuhVhXOKPrSxgDo4zLDo5hCURfwLiolSo6_5sYqeo
Message-ID: <CAO2sX32och3xLECCzV7ngK67xN4DBpZxBiXHBGTiuaYj6NDZSg@mail.gmail.com>
Subject: Re: very strange behavior in firefox
To: Rudy Vener <salt@panix.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: mn75BjU83iUtUE4Ig-ywCYKAAiilPZG7qtluQQ_4Dmo_1738385978
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Mw2Iz-duD7UouRaY1LN6RBH_FpHQw9JrT8d6n2oJW7M_1738385983
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000a8893a062d0d8630"
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mewtamer@gmail.com designates 209.85.218.51 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
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

--000000000000a8893a062d0d8630
Content-Type: text/plain; charset="UTF-8"

Yeah, if you watch YouTube videos as Google intends you to(e.g. in a
modern, mainstream graphical browser, the video gets interrupted by a video
ad every few minutes, often cutting the video off mid-sentence. There is a
skip ad button, which is usually the button immediately before the play
button, and their are browser extensions that will auto click the skip add
button for you, but the skip button doesn't always show up immediately.

Downloading with yt-dlp or other YouTube downloaders bypasses the ads,
which is why Google and the developers of the downloaders are in a constant
arms race of Google trying to prevent people from downloading and not
sitting through ads and the downloaders working around Google's efforts to
break them.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--000000000000a8893a062d0d8630
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yeah, if you watch YouTube videos as Google intends y=
ou to(e.g. in a modern, mainstream graphical browser, the video gets interr=
upted by a video ad every few minutes, often cutting the video off mid-sent=
ence. There is a skip ad button, which is usually the button immediately be=
fore the play button, and their are browser extensions that will auto click=
 the skip add button for you, but the skip button doesn&#39;t always show u=
p immediately.</div><div><br></div><div>Downloading with yt-dlp or other Yo=
uTube downloaders bypasses the ads, which is why Google and the developers =
of the downloaders are in a constant arms race of Google trying to prevent =
people from downloading and not sitting through ads and the downloaders wor=
king around Google&#39;s efforts to break them.<br></div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000a8893a062d0d8630--

