Return-Path: <blinux-list+bncBCL5FHHSVEIBBV57V24QMGQEWXT5PVA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 194F59BF3C2
	for <lists+blinux-list@lfdr.de>; Wed,  6 Nov 2024 17:56:57 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cbe9885064sf339476d6.0
        for <lists+blinux-list@lfdr.de>; Wed, 06 Nov 2024 08:56:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1730912216; cv=pass;
        d=google.com; s=arc-20240605;
        b=EO4RqtBEqb/sBqBsli5aLSgn8igYEvZGf2M9pVUPBJr2TwzkRthENf7SU+3syAGxp0
         hUrd/Yhvjbjzc5BwgrGdGU3OtxxwFa4jqiPQCQ/eAYH1LPkfX96mHqs3sBfTyrWJYCUV
         mSDYVGBmMo+IEVm3ffPPBRZvcL09ARzaCubfUPoip7QXgadHakmJk/ldQCZ7f2nH/s1v
         ORt6c5VndWD87+ypAoXicAHP6FrgKqwqe9XG/uIckLBlJ0KaeiECrIx96u2hESiCPxY0
         wrzKs9+RY8qcXpU6W7UOMkWvgfLBrOUa7xHVqpcWADvpQRAxJ7BHOoUbyn4Y4o/Wu67b
         rvBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:subject:user-agent:references
         :in-reply-to:message-id:date:to:from:delivered-to;
        bh=c937u2r4nmXwAcc5/pEPKZ39wNPTlqnLYosELZv7684=;
        fh=lrNE/Eiqm+9haLdhQyPj7bKUk+nnjqImV7lMo0e+EiY=;
        b=DwLVySaOHTvueNowtcAQjaYFf7mOJ+QKxuz+4TE8aJ8syJ4/TtLI3Aupg1ZRAmnPE0
         Th/N2z/UZWaYI216cUpv8Kc5An0xRGSt7puibpt92HH/h4Q4DvWulswIJhuLXvnAiU/u
         cXNhhQRWPUIJDIfPascgxd+ieLkJNko0FQ80xhPqvN+5SL5tx2uD3bxxUORPR6w3Uzbp
         ZiJMa/yuFZSwg/u7muU+Ga5EpT0Y1BIeS4f+IcHzM12zGxuZOSRN+S+on0RjgdhFxePf
         Vj2jZvOmL/gSpkWimaUmQ3PkkS7mfO5D+2LaGvGn2KPYX38XZgaOXonvrAhgdFi9inhT
         C1DA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.43 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730912216; x=1731517016;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :subject:user-agent:references:in-reply-to:message-id:date:to:from
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c937u2r4nmXwAcc5/pEPKZ39wNPTlqnLYosELZv7684=;
        b=hp/PL9ugpP4tY0GYjaa516ahL4STbUgjJ3nAcNHdVvpO9rjw58inqEBow1JIP+HR/W
         nmBGyYVCdAgLrZYy48j4pfB3GuvZyC7zig33iVDgXVcL7Jgn+3r3DtCCZ8s4/sa+qmzn
         lFzpI/siP36ngoufger+9IXzMTRDMaCzi95W/F05we7GHFxVs72DM0LiQhtmRPh4RGrt
         WOAnhiDtpAZVv04oaNwTGrZlUGYEENK/vEhmRTxSqoHBbyh16AcOabW7IawJTQrKVMiv
         HvzYBa2NZgK6YoK+lX7LJHJdZ0AgkoYLVjeYehaPFno8zqdcdo9nmwHkcdqPkl8PZbfH
         aivQ==
X-Forwarded-Encrypted: i=2; AJvYcCW6/9EuxnWeZUxilhB8y5zyY1Ui/xv0CoKfn6CrYJ2xN4OWrE0ZZz7uPomO6Lgj//MCGJiC2A==@lfdr.de
X-Gm-Message-State: AOJu0YwIcYShbn6yXWZ8VTSI+GL9iZE9b6cegpdmN3OOqhfm8lWZbn9V
	GKLyDHn373drRAGaKSWTkZWU2itoMMCV5XMdva/TyCK1ituKBFb74i4EXYxCerk=
X-Google-Smtp-Source: AGHT+IFsjgX0I5HW78XDxK8BNqfWBdh+38UbjBEEPwpYgFhqMhkz9GBcgdMWmWm+tlfuSfCIHA7T6Q==
X-Received: by 2002:a05:6214:4188:b0:6d0:7a60:1760 with SMTP id 6a1803df08f44-6d3460ba4f2mr341180126d6.48.1730912215629;
        Wed, 06 Nov 2024 08:56:55 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2601:b0:6d3:67c7:5cea with SMTP id
 6a1803df08f44-6d393552918ls910796d6.2.-pod-prod-01-us; Wed, 06 Nov 2024
 08:56:55 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUVtHijZW68GOqqhmFMc6PicUPdumUWAGoUYbuz1zBgyh3EHV2tr6lRJVQW2qa/vh7CYD86TKX8g2AfFw==@gapps.redhat.com
X-Received: by 2002:a05:6214:4386:b0:6cb:5f28:6b73 with SMTP id 6a1803df08f44-6d345faca85mr371225836d6.9.1730912214765;
        Wed, 06 Nov 2024 08:56:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1730912214; cv=none;
        d=google.com; s=arc-20240605;
        b=NKe2RpWDbdB0/QVnz4CxbL+XLF4L3JbZX53GZDLznyqVUfUJcO2HeJAUzUKaZYtxYJ
         FbGfbnDX88cdQJyi7SO/ZBHo80wVeDAQhcnTnTSWwSTwo8s7ShsaE8KFqqHJinsDwSBY
         gPrcYsFYn0/yRrBhWK/cJ5jTfB5ho1jnMwIC8nhKyBzzjcI6OpaFtEBBxWomznbg84kM
         +Mu0gEDlaEIuYRGuEnxbuwr3atvM0KJy2W33uXkh7afgca03YibkYFkdGMBCXWqLw8nX
         0zyflNW7Rs8GAk26ibdlghRkwmX1jI7mT6UUjYbz7dqvSO79eltnuK6r+7Zf+VD6rg0S
         o5Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:subject:user-agent:references:in-reply-to:message-id
         :date:to:from:delivered-to;
        bh=JIXsNt+2lo02xeyZp14NacfZXt/nnDXAkZuVBlbW7h4=;
        fh=EtVdQBxlItRcOb+dUaGBFiVNNTJufvM9QCGG+FJ4OiI=;
        b=UCJhQwIKb4vHVGpixOhQd6ogue+RxPKrWj073suo5m2Lljw2HlTMwxDv5+DWZTp20G
         zT7eBUZGj+9iDQ/tPdoyIwcOMBI1IzAm/TB/z22UUYLA5Kj5ZUf+t7/4oEXSwrx4jlUt
         0Kb3Y416um++1Yo0izQCBQ7Zd4GtUZ9MZq8xaE+Ft7LqOLXIwPhw/fEUUtkvhcFuTY8j
         nCuajLyGFXvy9V6VtQBq6RgHG+gYIRX+A1bTqYqCc5/1G3RJ1A1RHAyxuQOYH0MXrEDW
         7x8a5ZQWl9Dlt2A3ggFVB4Rd1xLG5PJv0VHShrVTJ3aIF2iZcqmV4d1SkeJeh/nekP31
         RU6Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.43 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d35416b1b1si159802576d6.216.2024.11.06.08.56.54
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 08:56:54 -0800 (PST)
Received-SPF: pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.43 as permitted sender) client-ip=209.85.167.43;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-631-7stYu6XHOF-fWIkUssB-gw-1; Wed,
 06 Nov 2024 11:56:53 -0500
X-MC-Unique: 7stYu6XHOF-fWIkUssB-gw-1
X-Mimecast-MFC-AGG-ID: 7stYu6XHOF-fWIkUssB-gw
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 99F611955D56
	for <blinux-list@gapps.redhat.com>; Wed,  6 Nov 2024 16:56:52 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 95A4E195DF80; Wed,  6 Nov 2024 16:56:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9280919541A6
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 16:56:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 10F671955D5D
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 16:56:52 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-623-7TdZxHYTOHKkiKp9jxm44Q-1; Wed, 06 Nov 2024 11:56:48 -0500
X-MC-Unique: 7TdZxHYTOHKkiKp9jxm44Q-1
X-Mimecast-MFC-AGG-ID: 7TdZxHYTOHKkiKp9jxm44Q
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539ea686fd7so876636e87.2
        for <blinux-list@redhat.com>; Wed, 06 Nov 2024 08:56:48 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVxKu0fhLhNDNeUpNimaudp+TP4SNT3UJua9dJBBnWLF4NgYa+ng22mPY/7vG9l8qRR09W8dBJvuON1ww==@redhat.com
X-Received: by 2002:a05:6512:3a82:b0:539:a353:2762 with SMTP id 2adb3069b0e04-53b3472160emr6440966e87.0.1730912206525;
        Wed, 06 Nov 2024 08:56:46 -0800 (PST)
Received: from [100.115.92.22] (m83-182-145-175.cust.tele2.se. [83.182.145.175])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bdcbff8sm2521580e87.210.2024.11.06.08.56.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2024 08:56:46 -0800 (PST)
From: mattias jonsson <mjonsson1986@gmail.com>
To: "Jason J.G. White" <jason@jasonjgw.net>, <blinux-list@redhat.com>
Date: Wed, 06 Nov 2024 17:56:45 +0100
Message-ID: <193026838c8.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
In-Reply-To: <3907f9d6-daa5-4776-8197-6f9d4b19a82e@jasonjgw.net>
References: <193023b73d8.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
 <3907f9d6-daa5-4776-8197-6f9d4b19a82e@jasonjgw.net>
User-Agent: AquaMail/1.53.0 (build: 105300523)
Subject: Re: crostini and brltty
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: g_p6aoUEIusgN4iMvSbspTAIJQ-A3YVwnGFzE28Gntc_1730912207
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ysqDCFBgCqMjuZGQiEqWgClOPYM9M63Aq9pFIQIxNlY_1730912212
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="19302683a524299275e469756d"
X-Original-Sender: mjonsson1986@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mjonsson1986@gmail.com designates 209.85.167.43 as permitted
 sender) smtp.mailfrom=mjonsson1986@gmail.com
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

This is a multi-part message in MIME format.
--19302683a524299275e469756d
Content-Type: text/plain; format=flowed; charset="UTF-8"

wich tty driver?



Den 6 november 2024 17:53:07 skrev "'Jason J.G. White' via 
blinux-list@redhat.com" <blinux-list@redhat.com>:

>
> On 6/11/24 11:07, mattias jonsson wrote:
>>
>> have anyone get brltty to work on crostini?
>> i allways get the no screen error
>>
> A contributor to the BRLTTY mailing list recently reported having it
> working under BRLTTY 6.7 with the new TTY-based driver, but cursor
> tracking was said to be unreliable.
>
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--19302683a524299275e469756d
Content-Type: text/html; charset="UTF-8"

<html>
<body>
<div style="color: black;">
<div style="color: black;">
<p style="margin: 0 0 1em 0; color: black;">wich tty driver?<br>
</p>
</div>
<div style="color: black;">
<p style="color: black; font-size: 10pt; font-family: sans-serif; margin: 8pt 0;">Den 6 november 2024 17:53:07 skrev &quot;&#39;Jason J.G. White&#39; via blinux-list@redhat.com&quot; &lt;blinux-list@redhat.com&gt;:</p>
<blockquote type="cite" class="gmail_quote" style="margin: 0 0 0 0.75ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/11/24 11:07, mattias jonsson
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:193023b73d8.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com">
      <div style="color: black;">
        <p style="margin: 0 0 1em 0; color: black;">have anyone get
          brltty to work on crostini?<br>
          i allways get the no screen error</p>
      </div>
    </blockquote>
    A contributor to the BRLTTY mailing list recently reported having it
    working under BRLTTY 6.7 with the new TTY-based driver, but cursor
    tracking was said to be unreliable.<br>
  
<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br /></blockquote>
</div>
</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--19302683a524299275e469756d--

