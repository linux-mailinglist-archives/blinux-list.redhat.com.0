Return-Path: <blinux-list+bncBDYIZZNASAHRBRU64DFAMGQEIUDWLUA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F6ECEF30B
	for <lists+blinux-list@lfdr.de>; Fri, 02 Jan 2026 19:32:41 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-4ee04f4c632sf242920461cf.3
        for <lists+blinux-list@lfdr.de>; Fri, 02 Jan 2026 10:32:41 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767378760; cv=pass;
        d=google.com; s=arc-20240605;
        b=O1ubUsEOAMwtRHgJwyaQarCcH6PICVkkEo5g4JkJlqy3JsAeQ8jb9/qShtfAwOXuDb
         JGvh9LeE/G450nzHBN8t+6dGpb3vVCMJYzaERYnC35p4c/PJb1QS7Fl4SJHPI8hc0y+3
         uFxhavepibumR0jAEJJ3rWAhuW+7RQjT0UaGjW2VLVddezKw/VgCcUrsPI7qrSgpxrfs
         1L6M/BR76l/2FwcfPXtGyyYvcq4YpNGZc7CM/4pCI9aFde13crpEtXvV9VijtmBFxAZy
         JUqvEivj177owZB2B/MbfukdWc1gLrbvrbwMQVAfBG3kV9yjrm6fpBoCKE4QB1/QZqh6
         63jw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:sender:dkim-signature;
        bh=QMaObWYCDj30ogNmkGFL0NiOKLDMv4OjE79stM2Fmjc=;
        fh=bssv2EJE+AmPNW+HZ2rhonW052R/UImkAym7cWMbCLw=;
        b=MG4PSfAAjEgLNETFynh3bLitVeRd5EdVjJ7fMcD/m5Q9syseTphlHcfqd41O1Vtxsn
         sOTa9oqimBWP7ak1grhnTq+s+s6Glz7Tl4/CT3NAFk9xalRykt5xmqLepRdA01ISRolF
         uLY6KYIRaMhAIMhMLbrastwfGY0oIQg3QJDp/GU5Nsy4I2Df4dHFRdGYfPobNQRuNF7t
         KEC5p+3V6PuOK22XDU6b031bs5VTyJYuNx9dbCKiFfZVZM/0+IdLOEMHJjG/V3PtDWf0
         xo3tiVcuHjlIK9KZ39+EtH9VvChyP4YtgvTNV9CrYpUx0KM1ndq+7y2Je1oRo6M7G45q
         ygow==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=PLbKFB7P;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.44 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767378760; x=1767983560; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QMaObWYCDj30ogNmkGFL0NiOKLDMv4OjE79stM2Fmjc=;
        b=sFD9yzomNb+VKg165wR/971S/SMIm2NmZpD117h7JC1SNA4kVLasdaWmT0Y0QHadP6
         ARsPwVI2ReGVdzHunF3kPY3DNMgiRfMbU/VS5BSAoHpdeiIVrnDWE1L5Y2wCk7ten6JC
         VYmyi1i9NlcVq8OM7orpMX/UlMtlzoJiUOjnZLUoFkeIHa5THlxUsR+h8OAJ1SI5EycX
         Lm8z4yY6oMCWUSRc+PVnycU/MIC4Rk5T8JEp9N7O/IHQtCW7ukALdWVIXCEJw3M6/TCz
         /XK1O50ztxBEwYp1vdiqmVvrqtjDFwNhZwGem9iDNStWbmS05BHoL5gWx2zi8ylx595B
         YajQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767378760; x=1767983560;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:delivered-to:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QMaObWYCDj30ogNmkGFL0NiOKLDMv4OjE79stM2Fmjc=;
        b=Z40TcsSCv0RJey9r/MTpqXOTTCLw1NegRYyy8HRz4X8vSRQlsqTEYQTnWHpKI3XNb2
         Qo6MTyca9iFRXbXl8/XdxMYpZ2YmnRuq1q4qQngDeC3JW0dJ2cFIlpYQTWPabYwMYvqf
         qu53m9AP2gthYf6z2T9GH9r5jijs0be2Ed8jJ7P8gf3NAWgek3nvDRWp02GXhWNSQtLI
         7VNQ7Gdrydu2Qm63pTw3gHMBcV6OWZ2whSk2P5qRFUdoBd5KDfqTADRFb0vtiOacleWN
         +nVunBqZfTZFCX28iRCHIBL2jPsSNiMj9mLJu+o7UvxCjhmAOTRLvrJtdsecOmqGbhuv
         6VnQ==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCWckiTVUNowyIPeoDORgswH0N7cvoH94SoxtZvTkflhHghlInQl7KAPXxEtgyUfw+Yj3QeFlA==@lfdr.de
X-Gm-Message-State: AOJu0YyYy9Xovl+bDYlZ5lvFzPEIb02lmOGw+XvhPmRwbID36VYi6TD4
	XjRqmI/zmZtHhHy1PajnhuJRcZK2LLvX4hp8LQaN3iDbuwp9P58N+RgaDQejtrCo0nw=
X-Google-Smtp-Source: AGHT+IHLuBYsFtqpIhYtbvMP8npvA+qvB6Ar2VtOZw/QKJISSyiD0w0lA1Rw4i/1PHQWKuuJg87NDA==
X-Received: by 2002:a05:622a:1146:b0:4ee:3e74:43d8 with SMTP id d75a77b69052e-4f4abd752b8mr704127561cf.38.1767378759497;
        Fri, 02 Jan 2026 10:32:39 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWaaEdxK+Xmkp9TyvQ8IlN7KBSb25KFc4vK+sTurbBFgsQ=="
Received: by 2002:a05:622a:54a:b0:4ec:f078:1136 with SMTP id
 d75a77b69052e-4f71e9531efls101973331cf.2.-pod-prod-05-us; Fri, 02 Jan 2026
 10:32:38 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCUxL6eeDYTSuZ/BTvFOTevhoDJX/7rbOY01aYvri0e0xb84ZOaUOhxCMvrLv3hRKLwfLsh0FnLY3mVtfA==@gapps.redhat.com
X-Received: by 2002:a05:622a:4a09:b0:4ee:2510:198a with SMTP id d75a77b69052e-4f4abd75629mr607809331cf.39.1767378758121;
        Fri, 02 Jan 2026 10:32:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767378758; cv=pass;
        d=google.com; s=arc-20240605;
        b=RfPC0v4xLdyo5OgQNGnjPUUi06ISiDwI7ONOHfaYPydBxK4Ciwv+yMvdqu7NcsDZqK
         GV/vLvuEqwROnWH7Tkd1g33U/lO0CYcXsN2wBjk3zrhK9AKtcejwqt9S1yAOtZv4j7Xv
         +MHjCTAAWNT9qrCrm82vKh14ZCdk/bnpdW8AJUrWwKdsack+bREQEySg9hrPam2Vlrw6
         sLBR5qsR3IyJ1I+yYABVqNKeLfemVUgXKU9j2TZcJnGQseCzQKeh1XFzRqPjnnnyNcx5
         WY5C3j3jaiJWy8tA98YgMPkRw+uI6KucHgRYG5OQT9IYwWEycr8jV3D4CDZNYwanjOm5
         KH9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=SVyLU3aMgy1iYvvdkmYyancYOU8l+VJmFdOtC/mNZvU=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=eJsBwI9FlZV/whczeXGZDKqm1EQEMLJ5UnZIV7M8nt6yCfxeWGHDxt7MEpfRkIunQ0
         5fg9H6XoIlcZCgaqm6E+s/PPYXf0DGJMlCEtrE5K8uOdhyNJlbufY8ZepqLTqJXsrhHF
         KaZPLVw3BE0modrfPdta6F0v1uUq27HrtXQLBhBQJktzhIJeuTq5HUxnxciMxKbwR0QN
         Wty7LUT8B8fS/wDLioxw101DUmApkadjRjEB/cTW1VD12TrZ0/mA0nFxhBkwlXnXV0r5
         m9/ZQRwkKM7lQmVv3dj3hDQaYRLQaBErcFHAPb5VOUTxNEWXmKLVg7hnv3ZyuYiIqyn8
         ScyA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=PLbKFB7P;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.44 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4f4ac6697desi483435971cf.247.2026.01.02.10.32.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 10:32:38 -0800 (PST)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.44 as permitted sender) client-ip=209.85.219.44;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-376-CZ8Ny4bkM5aUoBj2dFRQtg-1; Fri,
 02 Jan 2026 13:32:36 -0500
X-MC-Unique: CZ8Ny4bkM5aUoBj2dFRQtg-1
X-Mimecast-MFC-AGG-ID: CZ8Ny4bkM5aUoBj2dFRQtg_1767378755
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B5C5E1800378
	for <blinux-list@gapps.redhat.com>; Fri,  2 Jan 2026 18:32:35 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B0DB230001A7; Fri,  2 Jan 2026 18:32:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AD80130001A2
	for <blinux-list@redhat.com>; Fri,  2 Jan 2026 18:32:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3512A19560A5
	for <blinux-list@redhat.com>; Fri,  2 Jan 2026 18:32:35 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767378754;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=SVyLU3aMgy1iYvvdkmYyancYOU8l+VJmFdOtC/mNZvU=;
	b=BXkfDVP5oZKyGQHp8Rm6xt0XoNljErFFGb48UE2Bo37dx++oEjLQgf3sUGE1lXVvXA1tVp
	YrWidMPMmZt7MO9Ly+yUKCst30VhRvfA17NyN1PnrJPZDLEJ8ascojJnD5o3/6Wj04xXcE
	y4NxWeoAMpXU8j4ePoddS1x6CimdSdVL1dX7SPx+ZeQcxpQJ59nATBbtmuPoDWoUsInAbC
	9yucjF5qQc3TWJ0bAX0GOWjSfyO4hMgFHgZaE5WzO1zZWn4befC0JsbZwuSt+idBMQyLm4
	AZs/yIXjtSG1DmpXB3yp4m/mTf5uR9+eukK+n6b/9v32T0+EsGKa9Ug7sazEYw==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767378754; a=rsa-sha256;
	cv=none;
	b=sNxEhP3qzoPYdpqDoX7U5EQ22omZd4mhBtgJC9ZM1xGGe9w5uUdkxJkd9AifGFIvuyUuwo
	BU9Ka8ZWl1NqDmHcT3aEb38IDz+8mSdE3/HcVxBU6PA+P2hTYMV7grVKVN3gqqHUEUjbhZ
	+8OUi1o+M3gTCSpnnoxBx8yAnTeFG7c/UyQ+VA2y+4/M4Kn80t/pyqFa6iSFfXrc8QHG/w
	DHp+rMciQAwI5oTkPK/poXozVkHm2RKr9XC3cbZqdUluQWON+yAOi9/Asqb6Kkc74IgxyU
	nH+n7eU/TUdO7cnHE7jGRzQPZqbAI0PF/cuPsLVUpDfzS7k82gwz5BgZ0VoklQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=PLbKFB7P;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.44 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
 [209.85.219.44]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-634-mqLjsoJ3NSSFScRLSEvjyw-1; Fri, 02 Jan 2026 13:32:33 -0500
X-MC-Unique: mqLjsoJ3NSSFScRLSEvjyw-1
X-Mimecast-MFC-AGG-ID: mqLjsoJ3NSSFScRLSEvjyw_1767378752
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-890228ed342so49819156d6.2
        for <blinux-list@redhat.com>; Fri, 02 Jan 2026 10:32:32 -0800 (PST)
X-Gm-Gg: AY/fxX7mh8WAZXPWJQGi7hLXnZKbHTXj/uSS+50WiiZDbMEoSWMOrc5f08uqPdnTZEp
	i5lUJ5SeLyAZ8E7Vg+pnf5dfj7AYCaZj5fXvbyeWDjrPYIAv/Lr5ufgCm5inoW0hPBku0Bb/sS/
	UzKJ2ETt5C9nAT+TXcpK6CUG48SHV4XbAVzFFEitEBmPmt3K3bkKcl3rxjJUbtLPxYR0oa+wLvv
	dM4pVkLidKhzZXeW8xElBLyjufU1fXdSD18pK6R6J3pGaYJBKf/ZxjK1ciYg9UZJzj7u9gvFMBB
	Oh8+TSTz/f1iweSRCqB0rYkn/ct/jrINDglnMZrx978Urcrl0TPop0PjpPPQOEIgeBOfMGqkcxn
	1yaAOGf+Qd7IOjsALxy7NGguVXiJa5nyP4bY57gPUYMU6KFekwZngxqRsRT9IOOShnskmOzeDmM
	BOxBKnMlMG4P2DEE9GH9pIqfyrkxyp1oMmt3v2yAa5lQ8rzUTtrjAG98mHp0tqmp9HoWGqfrCMm
	uDC8IgMAvlJ0IUU0lR14/v+Ex4=
X-Received: by 2002:a05:6214:2021:b0:890:68f:a046 with SMTP id 6a1803df08f44-890068fa282mr356618836d6.63.1767378751932;
        Fri, 02 Jan 2026 10:32:31 -0800 (PST)
Received: from [192.168.4.30] (63-142-94-63-142-94-164.cpe.sparklight.net. [63.142.94.164])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d997aed21sm350733376d6.30.2026.01.02.10.32.30
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jan 2026 10:32:31 -0800 (PST)
Message-ID: <8429e9e3-4b90-4848-b0fb-af7ad68c1007@gmail.com>
Date: Fri, 2 Jan 2026 12:32:30 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: vojtux_43
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
 <6de1a01b-3d7d-454e-a633-1e4044fc9801@gmail.com>
 <6fddcc0e-caec-42cb-b602-8df63068ae0b@gmx.it>
 <495c0d47-4455-4c74-a1f8-1648f290048a@gmail.com> <E1vbeKX-000sRo-2r@lapcust>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <E1vbeKX-000sRo-2r@lapcust>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: oFbS0t-oULLhKP8oSvMpq-UH_30U1YgWL_DpeNgOFPM_1767378752
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=PLbKFB7P;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.219.44 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

Artur Rutkowski,
the sound in general is fine. the only issue i have is at the login screen. Orca is extremely loud. the volume keys on my keyboard do not effect it.
Once i actually log in orca works normally.    it is only the login screen that i can not control the volume.
Rodney



On 1/2/2026 06:32, Artur Rutkowski wrote:
> Hi Rodney,
>
> Do you have problem with volume in general or it is Orca-oriented subject? I ask it because I control volume by amixer only. I never touch the Orca's volume itself and I don't even know if there is any dedicated setting.
>
> Greetings.
> Artur Rutkowski
>
> https://www.youtube.com/@Art-ur-g2o

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

